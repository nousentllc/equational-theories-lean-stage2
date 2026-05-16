% true_2135_2128 / Equation2135 -> Equation2128
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y] : (X = f(f(f(Y,Y),Y),f(X,Y)))).
fof(goal, conjecture, ! [X,Y] : (X = f(f(f(Y,Y),X),f(Y,Y)))).
