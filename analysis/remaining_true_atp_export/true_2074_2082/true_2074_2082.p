% true_2074_2082 / Equation2074 -> Equation2082
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(f(X,Y),Z),f(Y,X)))).
fof(goal, conjecture, ! [W,X,Y,Z] : (X = f(f(f(X,Y),Z),f(W,X)))).
