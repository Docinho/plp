%adiciona elemento lista 
:-initialization(main).

readList(X) :-
    read_line_to_codes(user_input, Input),
    atom_codes(IA, Input),
    atomic_list_concat(Strings, ' ', IA), %pode mudar o separador aqui, e.g. virgula
    maplist(atom_number, Strings, X).
    
readNumber(X) :-
    read_line_to_string(user_input, N),
    number_string(X, N).

% adiciona no inicio
adiciona(X,[],[X]).
adiciona(X,L1,[X|L1]).
%adiciona  no fim
adicionaFim(X,[],[X]).
adicionaFim(X,[H|T],L) :- adicionaFim(X,T,Result),adiciona(H,Result,L).
main:-
	readNumber(Num),
	readList(List),
	adicionaFim(Num,List,L),
	writeln(L).
	
