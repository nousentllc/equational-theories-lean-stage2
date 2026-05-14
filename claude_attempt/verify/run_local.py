#!/usr/bin/env python3
"""Run a candidate Lean answer through the local judge.

Usage from repo root, with `.env.judge` sourced:

    python3 claude_attempt/verify/run_local.py true_2061_307
    python3 claude_attempt/verify/run_local.py --all
    python3 claude_attempt/verify/run_local.py true_2061_307 --problems examples/problems/sample_200.json

The script loads:
  - the problem record from --problems (default sample_200.json) by id
  - the answer JSON from claude_attempt/candidates/<id>.answer.json
and invokes judge.verify.verify_answer.
"""
from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path


def load_problems(path: Path) -> dict[str, dict]:
    data = json.loads(path.read_text())
    return {item["id"]: item for item in data}


def run_one(problem: dict, answer_path: Path, *, lean_bin: Path, lake_bin: Path):
    from judge.verify import verify_answer, JudgeConfig
    config = JudgeConfig(lake_bin=lake_bin, lean_bin=lean_bin)
    answer = answer_path.read_text()
    result = verify_answer(problem, answer, config=config)
    return result


def main():
    p = argparse.ArgumentParser()
    p.add_argument("ids", nargs="*", help="Problem ids to verify (or --all)")
    p.add_argument("--all", action="store_true", help="Verify every candidate found")
    p.add_argument("--problems", default="examples/problems/sample_200.json")
    p.add_argument("--candidates-dir", default="claude_attempt/candidates")
    args = p.parse_args()

    repo_root = Path(__file__).resolve().parents[2]
    sys.path.insert(0, str(repo_root))

    lean_bin = Path(os.environ.get("LEAN_BIN", "lean"))
    lake_bin = Path(os.environ.get("LAKE_BIN", "lake"))

    problems = load_problems(repo_root / args.problems)
    cand_dir = repo_root / args.candidates_dir

    if args.all:
        ids = sorted(p.stem.replace(".answer", "") for p in cand_dir.glob("*.answer.json"))
    else:
        ids = args.ids
        if not ids:
            p.error("provide at least one id or pass --all")

    totals = {"accepted": 0, "incorrect": 0, "incomplete_proof": 0, "malformed": 0, "unparsed": 0, "other": 0}
    failed = []
    for pid in ids:
        if pid not in problems:
            print(f"[skip] {pid}: not in {args.problems}")
            continue
        cand = cand_dir / f"{pid}.answer.json"
        if not cand.exists():
            print(f"[skip] {pid}: no candidate at {cand}")
            continue
        try:
            result = run_one(problems[pid], cand, lean_bin=lean_bin, lake_bin=lake_bin)
        except Exception as exc:  # noqa: BLE001
            print(f"[err]  {pid}: {exc}")
            failed.append(pid)
            continue
        status = result.get("status", "other")
        if status in totals:
            totals[status] += 1
        else:
            totals["other"] += 1
        if status != "accepted":
            failed.append(pid)
        msg = result.get("message") or result.get("detail") or ""
        msg = msg[:200].replace("\n", " ") if msg else ""
        print(f"[{status:>16}] {pid}  {msg}")

    print()
    print("Totals:", json.dumps(totals))
    if failed:
        print("Failed:", " ".join(failed))


if __name__ == "__main__":
    main()
