% true_674_668 / Equation674 -> Equation668
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(Y,f(X,f(f(X,Z),Z))))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(Y,f(X,f(f(X,X),Z))))).
