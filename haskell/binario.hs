c :: Integer -> [Char]
c n 
	| n == 0 = "0"
	| n == 1 = "1"
	| n `mod` 2 == 0 = c (n `div` 2) ++ "0"
	| otherwise = c (n `div` 2) ++ "1"

main::IO ()
main = do
	x <- getLine

	putStrLn(c (read x) )

