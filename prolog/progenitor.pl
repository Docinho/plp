%https://rodrigorgs.github.io/aulas/mata56/aula02-prolog
progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

masculino(joao).
masculino(jose).
masculino(jorge).
feminino(maria).
feminino(julia).
feminino(ana).
feminino(iris).

filho(X,Y):-progenitor(Y,X).
mae(X,Y):-progenitor(X,Y),feminino(X).
pai(X,Y):-progenitor(X,Y),masculino(X).
avo(Avo,Neto):-progenitor(Avo,Filho),progenitor(Filho,Neto),masculino(Avo).
avoh(Avo,Neta):-progenitor(Avo,Filha),progenitor(Filha,Neta),feminino(Avo).
