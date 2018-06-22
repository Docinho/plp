main :: IO ()
main = do 
	n1 <- getLine
	let lista = read n1
	putStrLn ( show ( iterar lista lista) )

iterar:: [Int] -> [Int] -> [Int]
iterar _ [] = []
iterar d (a:as) = [( conta a d ) ] ++ iterar d as

conta:: Int -> [Int] -> Int
conta b [] = 0
conta b (c:cs) = if b == c then ( 1 + conta b cs ) else ( 0 + conta b cs )
