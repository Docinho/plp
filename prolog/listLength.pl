:-initialization(main).

readList(X) :-
    read_line_to_codes(user_input, Input),
    atom_codes(IA, Input),
    atomic_list_concat(Strings, ' ', IA), %pode mudar o separador aqui, e.g. virgula
    maplist(atom_number, Strings, X).
    

listLength([],0).
listLength([H|T],Sum):-listLength(T,K),Sum is K+1.

main:-
	readList(List),
	listLength(List,Sum),
	writeln(Sum).
	
