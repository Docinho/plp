% concatena listas
:-initialization(main).


% adiciona no inicio
adiciona(X,[],[X]).
adiciona(X,L1,[X|L1]).
%adiciona  no fim
adicionaFim(X,[],[X]).
adicionaFim(X,[H|T],L) :- adicionaFim(X,T,Result),adiciona(H,Result,L).

concatenate([],L1,L1).
concatenate(L2,[],L2).
concatenate([H1|T1],[H2|T2],[H1,H2|T3]):-concatenate(T1,T2,T3).

main:-
	read(List),
	read(List0),
	concatenate(List,List0,List1),
	writeln(List1).
