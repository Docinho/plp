main::IO()
main = do
	entrada <- getLine
	let ent1 = read entrada
	entrada2 <- getLine
	let ent2 = read entrada2
	putStrLn( show ( uniao ent1 ent2 0) )

uniao :: [Int] -> [Int] -> Int -> [Int]
uniao [] [] _= []
uniao [] b _= b
uniao (a:as) b 0 = a:uniao as b 1
uniao a (b:bs) 1 = b:uniao a bs 0 

