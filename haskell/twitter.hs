-- Crie um programa que receba uma frase como entrada e imprima quantos caracteres restam até atingir o limite de 140 caracteres do twitter. 

main = do
	msg <- getLine
	let c = length msg
	let d =  140 - c
	print d

