main:: IO ()
main = do 
	n1 <- getLine
	let lista = read n1
	let valor = primeiro lista
	putStrLn ( show ( menorElemento lista valor ) )


primeiro:: [Int] -> Int
primeiro (n:ms) = n

menorElemento:: [Int] -> Int -> Int
menorElemento [] b = b
menorElemento ( a:as ) b 
	|a < b = menorElemento as a 
	|otherwise = menorElemento as b

