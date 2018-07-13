:- initialization(main).

main:-
read_line_to_string(user_input,Pessoa),
gosta(Pessoa,Comida),
writeln(Comida),
halt(0).
gosta("Ana","Carangueijo").
gosta("Ana", "Peixe").



