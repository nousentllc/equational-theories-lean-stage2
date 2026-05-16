% true_1698_555 / Equation1698 -> Equation555
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(Y,X),f(f(Y,Z),Y)))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(Y,f(Z,f(Y,f(X,Y)))))).
