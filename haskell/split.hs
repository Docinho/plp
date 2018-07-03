main:: IO()
main = do
	valor <- getLine
	let valor1 = read (valor)
	putStrLn(show (split valor1))

split:: [Int] -> [[Int]]
split [] = []
split a = [divide 0 ((length a) `div` 2) a, divide ((length a) `div` 2) (length a) a]

divide:: Int -> Int -> [Int] -> [Int]
divide _ _ [] = []
divide init end lista = if init < end then lista !! init:(divide (init+1) end lista) else []
