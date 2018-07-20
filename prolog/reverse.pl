% inverte lista 
:-initialization(main).

readList(X) :-
    read_line_to_codes(user_input, Input),
    atom_codes(IA, Input),
    atomic_list_concat(Strings, ' ', IA), %pode mudar o separador aqui, e.g. virgula
    maplist(atom_number, Strings, X).

reverseT([],L,L).
reverseT([H|T],LoadList,L):-reverseT(T,[H|LoadList],L).

main:-
	readList(List),
	reverseT(List,[],List1),
	writeln(List1).
