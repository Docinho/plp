main:: IO ()
main = do 
	n1 <- getLine
	n2 <- getLine
	
	putStrLn ( show ( compara  ( somaConsecutivo (  show ( somaConsecutivo n1 ) ) ) ( somaConsecutivo ( show ( somaConsecutivo n2 ) ) ) ) )
	
somaConsecutivo :: [Char] -> Int
somaConsecutivo [] = 0
somaConsecutivo (a:as) = ( read [a] ) + somaConsecutivo as

compara :: Int -> Int -> Int
compara a b
	| a > b = 1
	| a < b = 2
	| otherwise = 0

 
