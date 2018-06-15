qs :: Integer -> Integer
qs 0 = 0
qs 1 = 1
qs n = n + qs ( n - 1 )

sq :: Integer -> Integer
sq 0 = 0
sq 1 = 1
sq n = n^2 + sq ( n - 1 )

main::IO ()
main = do
	x <- getLine
	putStrLn( show(( qs( read x )^2 ) - sq( read x ) ) )

