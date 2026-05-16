% true_1636_1839 / Equation1636 -> Equation1839
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(X,X),f(f(Y,X),Z)))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(f(X,f(X,Y)),f(X,Z)))).
