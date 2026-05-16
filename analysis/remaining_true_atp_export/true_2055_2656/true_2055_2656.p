% true_2055_2656 / Equation2055 -> Equation2656
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(f(X,Y),X),f(Y,Z)))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(f(f(X,X),f(Y,Z)),Y))).
