max(X,Y,Z) :- (  X =< Y -> Z = Y ;  Z = X).

:- read(X), read(Y), read(Z), max(X,Y,Z).

