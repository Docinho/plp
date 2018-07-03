main::IO()
main = do
	entrada <- getLine
	let ent1 = read entrada
	putStrLn( show ( media ent1 ) )

soma::[Float] -> Float -> Float
soma [] _ = 0
soma (x:xs) a = x*a + soma xs (a+1)

media :: [Float] -> Float
media [] = 0
media a = (soma a 1) / ( fromIntegral ( length a ) )
