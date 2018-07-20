:-initialization(main).


membro(X,L,R):-ehMembro(X,L),R=true.
membro(X,L,R):-not(ehMembro(X,L)),R=false.
ehMembro(X,[X|T]).

ehMembro(X,[H|T]) :- ehMembro(X,T).
readNumber(X) :-
    read_line_to_string(user_input, N),
    number_string(X, N).

readList(X) :-
    read_line_to_codes(user_input, Input),
    atom_codes(IA, Input),
    atomic_list_concat(Strings, ' ', IA), %pode mudar o separador aqui, e.g. virgula
    maplist(atom_number, Strings, X).

main :-
	readList(Read),
	readNumber(Number),
	membro(Number,Read,R),
	writeln(R).
