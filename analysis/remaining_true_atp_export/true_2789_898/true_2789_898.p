% true_2789_898 / Equation2789 -> Equation898
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(f(Y,Z),f(Y,X)),Z))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(Y,f(f(X,Z),f(Z,Y))))).
