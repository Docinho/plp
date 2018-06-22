main:: IO ()
main = do
	n1 <- getLine
	putStrLn ( show ( goldbach ( read n1 ) ) )

goldbach a = head $ 
	filter (\(x,y) -> isPrime x && isPrime y) $ 
	map (\e -> (e, a - e)) [1,3 ..a `div` 2]
	where
factors a = filter (isFactor a) [2..a-1]
isFactor a b = a `mod` b == 0
isPrime a = null $ factors a
