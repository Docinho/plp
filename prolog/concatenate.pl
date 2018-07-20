% concatena listas
:-initialization(main).

readList(X) :-
    read_line_to_codes(user_input, Input),
    atom_codes(IA, Input),
    atomic_list_concat(Strings, ' ', IA), %pode mudar o separador aqui, e.g. virgula
    maplist(atom_number, Strings, X).

% adiciona no inicio
adiciona(X,[],[X]).
adiciona(X,L1,[X|L1]).
%adiciona  no fim
adicionaFim(X,[],[X]).
adicionaFim(X,[H|T],L) :- adicionaFim(X,T,Result),adiciona(H,Result,L).

concatenate(L0,[],L0).
concatenate(L0,[H|T],L):-adicionaFim(H,L0,R),concatenate(R,T,L).

main:-
	readList(List),
	readList(List0),
	concatenate(List,List0,List1),
	writeln(List1).
