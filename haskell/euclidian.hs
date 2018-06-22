main:: IO ()
main = do
	n1 <- getLine
	n2 <- getLine
	putStrLn ( show ( euclidean ( read n1 ) ( read n2 ) ) )

euclidean:: Int -> Int -> Int
euclidean a b
	|a == b = a
	|a < b = euclidean a ( b - a )
	|a > b = euclidean b ( a - b ) 
