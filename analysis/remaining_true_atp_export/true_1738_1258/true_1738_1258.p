% true_1738_1258 / Equation1738 -> Equation1258
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (X = f(f(Y,Y),f(f(Z,X),X)))).
fof(goal, conjecture, ! [X,Y,Z] : (X = f(X,f(f(f(Y,Z),X),X)))).
