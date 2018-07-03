main::IO()
main = do
	entrada <- getLine
	let ent1 = read entrada
	putStrLn( show ( duplicatas ent1 ) )


duplicatas :: [Char] -> [Char]
duplicatas [] = []
duplicatas (x:xs) = [x]++( duplicatas (seguidaDuplicata x xs) )

seguidaDuplicata :: Char -> [Char] -> [Char]
seguidaDuplicata _ [] = []
seguidaDuplicata a (x:xs) = if a == x then seguidaDuplicata a xs else (x:xs)

--['a','a','a','a','b']
