main::IO()
main = do
	entrada <- getLine
	let ent1 = read entrada
--	entrada2 <- getLine
--	let ent2 = read entrada2
	putStrLn( show ( merge ent1 ) )

uniao :: [Int] -> [Int] -> [Int]
uniao [] [] = []
uniao [] b = b
uniao b [] = b
uniao (a:as) (b:bs) = if a < b then a:uniao as (b:bs) else b:uniao (a:as) bs

merge :: [Int] -> [Int]
merge [] = []
merge [c] = [c]	
merge cs = uniao ( merge ( fsthalf cs ) )  ( merge ( sndhalf cs) )


fsthalf :: [a] -> [a]
fsthalf xs = take (length xs `div` 2) xs

sndhalf :: [a] -> [a]
sndhalf xs = drop (length xs `div` 2) xs
