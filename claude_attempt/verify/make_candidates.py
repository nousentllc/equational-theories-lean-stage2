#!/usr/bin/env python3
"""Convert all handproofs/*.lean files into candidates/*.answer.json files.

Strips leading `--` comments so the comment header stays out of the submitted
code (keeps it under the byte budget). The judge accepts comments in code,
but every byte counts when we're near the 10 KB false-cert cap and the 50 KB
true-cert cap.
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
HANDPROOFS = ROOT / "claude_attempt" / "handproofs"
CANDIDATES = ROOT / "claude_attempt" / "candidates"


def strip_header_comments(code: str) -> str:
    lines = code.split("\n")
    keep: list[str] = []
    in_header = True
    for line in lines:
        if in_header and (line.startswith("--") or line.strip() == ""):
            continue
        in_header = False
        keep.append(line)
    return "\n".join(keep)


def detect_verdict(path: Path) -> str:
    """A file named 'false_*' is a false certificate; others are true."""
    return "false" if path.name.startswith("false_") else "true"


def build_one(path: Path) -> tuple[Path, int]:
    code = strip_header_comments(path.read_text())
    answer = {"verdict": detect_verdict(path), "code": code}
    out = CANDIDATES / (path.stem + ".answer.json")
    out.write_text(json.dumps(answer))
    return out, len(json.dumps(answer))


def main() -> None:
    CANDIDATES.mkdir(parents=True, exist_ok=True)
    files = sorted(HANDPROOFS.glob("*.lean"))
    if not files:
        print("no handproofs found")
        return
    for path in files:
        out, size = build_one(path)
        print(f"{path.stem:30} {size:>6} bytes -> {out.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
