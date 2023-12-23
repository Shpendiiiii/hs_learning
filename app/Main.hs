module Main where

main :: IO ()
main = do
  putStrLn "Works" 
  putStrLn $ show e
  putStrLn $ show (square 3)
  showResult (square 3)


e = (\n n1 -> n + n1) 1 1

square :: Double -> Double
square x = x ** 2

e_ :: Double
e_ = exp 1

showResult func_ = putStrLn $ show func_

cube = (\x -> x ** 3)

cosSq :: Double -> Double 
cosSq x = square $ cos x

sqRoot :: Double -> Double
sqRoot x = sqrt $ 1 + x

--if statements
stepFunc x = if x <= 0
  then 0
  else 1

--pattern matching
pM :: Bool -> String
pM hasBags = case hasBags of 
  False -> "There is no fee"
  True -> "There is a $50 fee"