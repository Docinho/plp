main:: IO()
main = do
	n <- getLine 
	putStrLn(primo (read n) 2)

primo:: Int -> Int -> [Char]
primo a b 
	|b > a`div`2 = "0"
	|a `mod` b == 0 = "1"
	| otherwise = primo a (b+1)
