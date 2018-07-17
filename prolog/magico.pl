ler(Number) :-
read(user_input, Codes),
string_to_atom(Codes, Atom),
atom_number(Atom, Number).

ehPerfeito(Num,R):-
ehPerfeito(Num,1,0), R = true.

ehPerfeito(Num,R):-
not(ehPerfeito(Num,1,0)), R = false.

ehPerfeito(Num,Num,Num).

ehPerfeito(Num,Div,Sum):-
Div < Num,
Resto is Num mod Div,
Resto=0,
NewSum is Sum+Div,
NewDiv is Div+1,
ehPerfeito(Num,NewDiv,NewSum).

ehPerfeito(Num,Div,Sum):-
Div<Num,
Resto is Num mod Div,
Resto\=0,
NewDiv is Div+1,
ehPerfeito(Num,NewDiv,Sum).

:- initialization(main).
main:-
ler(Number),
ehPerfeito(Number, R),
writeln(R).
