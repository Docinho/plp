main::IO()
main = do
	entrada <- getLine
	putStrLn( palindromo entrada False) 

palindromo :: [Char] -> Bool-> [Char]
palindromo [] False = "nem eh"
palindromo [] True = "eh"
palindromo (x:[]) False = "nem eh"
palindromo (x:[]) True = "eh"
palindromo x _= if (head x) == (last x) then palindromo (tail (init x)) True else "nem eh"
