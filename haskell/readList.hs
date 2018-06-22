import Data.List
import Text.Read

main :: IO ()
main = do
	inputs <- getUserInputs
	print (sort inputs)

parseInput :: String -> Maybe Int
parseInput input = if input == "exit" then Nothing else (readMaybe input):: Maybe Int

getUserInputs :: IO [Int]
getUserInputs = do
	input <- getLine
	case parseInput input of
		Nothing -> return []
		Just anInt -> do
			moreInputs <- getUserInputs
			return (anInt : moreInputs)
			
