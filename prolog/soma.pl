
estaNaLista(X, [], 0).
estaNaLista(X,[H|T], Soma):- H == X -> estaNaLista(X, T, K), Soma is 1 + K; estaNaLista(X, T, Soma).

temRepeticao(X, List):- estaNaLista(X, List, Qtd), Qtd > 1.

fazSet([],[]).
fazSet([H|T],[H|R]):-estaNaLista(H,T,Soma),Soma == 0,fazSet(T,R).
fazSet([H|T],R):-fazSet(T,R).

soma([],0).
soma([H|T],Soma):- soma(T,K), Soma is H+K.

:-initialization(main).

main:-
	read(List),
	fazSet(List,L),
	soma(L,Sum),
	writeln(Sum).

