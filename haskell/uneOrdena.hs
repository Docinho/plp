main::IO()
main = do
	entrada <- getLine
	let ent1 = read entrada
	entrada2 <- getLine
	let ent2 = read entrada2
	putStrLn( show ( uniao ent1 ent2 ) )

uniao :: [Int] -> [Int] -> [Int]
uniao [] [] = []
uniao [] b = b
uniao (a:as) (b:bs) = if a < b then a:uniao as (b:bs) else b:uniao (a:as) bs
