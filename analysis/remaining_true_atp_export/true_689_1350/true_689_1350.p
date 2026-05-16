% true_689_1350 / Equation689 -> Equation1350
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [W,X,Y,Z] : (X = f(Y,f(X,f(f(Z,X),W))))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(Y,f(f(f(Z,X),X),Y)))).
