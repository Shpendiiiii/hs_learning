
module Main where
import Data.Char (ord)
import Data.Word

main :: IO ()
main = do
  putStrLn "Works" 
  putStrLn $ show e
  print e
  putStrLn $ show (square 3)
  showResult (square 3)

unicodeValue2 :: Int
unicodeValue2 = ord '✨' 

--print character from decimal code
printChar = toEnum 1114111 :: Char
pp = print [printChar]

--anon func
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

--list comp
lst = [ x * 2 | x <- [1..20] ]

--list compt with a predicate 
predicate_lst = [ x * 2 | x <- [1 ..10], x * 2 >= 10 ]
 
--50 to 100, and take only those numbers when divided with 7, have the remainder 3
specific_lst = [ x | x <- [50..100], x `mod` 7 == 3 ]

--more predicates 
more_pred = [ if x < 10 then "BOOM!" else "BANG!" | x <- [1..30], odd x]

mp1 xs = [ x | x <- xs, odd x]

boomBangs xs = [if x < 10 then "BANG!" else "BOOM!" | x <- xs, odd x]   


--combine lists inside a list comp
--e.g. two lists have each 3 elems, the resulting list will be 3^2
cl = [x * y | x <- [1..3], y <- [1..2]]

--combine lists, pt. 2 
nouns = ["hobo","frog","pope"] 
adjectives = ["lazy","grouchy","scheming"]
funny_comb = [ a ++ " " ++ n | a <- adjectives, n <- nouns]

removeNonUppercase xs = [c | c <- xs, c `elem` ['A'..'Z']]

xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]] 

removeOdd xxs = [[ x | x <- xs, even x]| xs <- xxs]

showRes = removeOdd xxs


--get the right triangle that gives the perimeter of 64
triangles = [ (a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]

factorial n = product [1..n]

--pattern matching

lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number 7";
lucky x = "Sorry, out of luck, pal!" 

len_ :: (Num b) => [a] -> b
len_ [] = 0
len_ (_:xs) = 1 + len_ xs

len' :: [a] -> Int
len' xs = sum [1 | _ <- xs]

--where and pattern matching
densityTell mass volume 
  | density < 1.2 = "You can float in the air"
  | density <= 1000.0 = "You will swim"
  | otherwise = "You are going to sink"
  where density = mass / volume

showMe = print (densityTell 400 1)

--where keyword usage
initials first last = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = first
        (l:_) = last

calcDensities xs = [density m v | (m,v) <- xs]
  where density mass volume = mass / volume

--same function but with the let keyword
calcDensities_ xs = [density | (m, v) <- xs, let density = m / v, density < 1.2]

--pattern matching
head' xs = case xs of 
    [] -> error "No head for empty lists"
    (x:_) -> x

describeList xs = "The list is " ++ what xs  
  where what [] = "empty."  
        what [x] = "a singleton list."  
        what xs = "a longer list."

multThree x y z = x * y * z  