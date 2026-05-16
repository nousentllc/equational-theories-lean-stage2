% true_691_1976 / Equation691 -> Equation1976
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(Y,f(X,f(f(Z,Y),Y))))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(f(Y,f(Z,Y)),f(X,Y)))).
