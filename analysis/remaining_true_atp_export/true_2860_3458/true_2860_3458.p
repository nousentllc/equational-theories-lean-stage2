% true_2860_3458 / Equation2860 -> Equation3458
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(f(X,f(X,Y)),Z),Z))).
fof(goal, conjecture, ! [X,Y] : (f(X,X) = f(X,f(f(X,Y),X)))).
