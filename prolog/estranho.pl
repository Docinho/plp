:-initialization(main).

main:-
	read(List),
	soma(List,Sum),
	listLength(List,Len),
	maior(List,Maior),
	menor(List,Menor),
	Media is (Sum/Len),
	R is (Media * (Maior-Menor)),
	writeln(R).


maior([],-100000).
maior([H|T],Maior):- maior(T,M1),H < M1, Maior is M1.
maior([H|T],H).
menor([],100000).
menor([H|T],Menor):- menor(T,M1), H>M1, Menor is M1.
menor([H|T],H).

soma([],0).
soma([H|T],Soma):- soma(T,K), Soma is H+K.

listLength([],0).
listLength([H|T],Sum):-listLength(T,K),Sum is K+1.
