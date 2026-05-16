% true_1500_498 / Equation1500 -> Equation498
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(Y,X),f(Z,f(X,Z))))).
fof(goal, conjecture, ! [W,X,Y,Z] : (X = f(Y,f(X,f(Z,f(W,W)))))).
