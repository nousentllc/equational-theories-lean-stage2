% true_2771_2775 / Equation2771 -> Equation2775
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(f(Y,Z),f(X,X)),Y))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(f(f(Y,Z),f(X,Y)),Y))).
