:-initialization(main).

main:-lerNumero(Number),
divisor(Number,0,Number).

divisor(Num,Div,Num).

divisor(Num,Div,Sum) :- 0 > Div, NewDiv is Div - 1,Res is Num mod NewDiv, Res = 0, NewSum is Sum + NewDiv -> divisor(Num,NewDiv,NewSum).

divisor(Num,Div,Sum) :- 0 > Div, NewDiv is Div - 1, Result is Num mod NewDiv, Result \=0 -> divisor(Num,NewDiv,Sum).

divisor(Num,Div,Sum) :- Div = 0 -> Num = Sum.

lerNumero(Number):-
read_line_to_codes(user_input,Codes),
string_to_atom(Codes,Atom),
atom_number(Atom,Number).

