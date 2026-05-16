% true_4082_4109 / Equation4082 -> Equation4109
% Binary operation f encodes the magma operation.
fof(hypothesis, axiom, ! [X,Y,Z] : (f(X,X) = f(f(f(Y,X),X),Z))).
fof(goal, conjecture, ! [X,Y,Z] : (f(X,X) = f(f(f(Y,Z),Z),Y))).
