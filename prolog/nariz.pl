:- initialization(main).

valor("Rudolph",0).
valor("Rudolph",9).
valor("Vigoroso",1).
valor("Dançarino",2).
valor("Saltador",3).
valor("Raposa",4).
valor("Cometa",5).
valor("Cupido",6).
valor("Perito",7).
valor("Ligeiro",8).

ler(Number):- read_line_to_string(user_input, Codes),
string_to_atom(Codes,Atom),
atom_number(Atom,Number).

modulo(A,B,C,D,E,F,G,H,I,R):- R is ((A+B+C+D+E+F+G+H+I) mod 9).

main :-
	ler(V1),
	ler(V2),
	ler(V3),
	ler(V4),
	ler(V5),
	ler(V6),
	ler(V7),
	ler(V8),
	ler(V9),
	modulo(V1,V2,V3,V4,V5,V6,V7,V8,V9,R),
	valor(Rena, R), writeln(Rena).

