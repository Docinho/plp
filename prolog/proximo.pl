proximo(no1,no2).
proximo(no2,no3).
proximo(no3,no4).
proximo(no4,no5).

daPraChegar(X,Y):-proximo(X,Y)-> true; proximo(X, Z), daPraChegar(Z, Y).
%daPraChegar(X,Y):-proximo(X,Y).
%daPraChegar(X,Y):- proximo(X, Z), daPraChegar(Z, Y).
