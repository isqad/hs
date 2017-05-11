removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

take' :: (Num n, Ord n) => n -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ []   = []
take' n (x:xs) = x : take' (n - 1) xs

max' :: (Ord a) => a -> a -> a
max' a b
   | a < b  = b
   | a >= b = a

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Empty list"
maximum' [a] = a
maximum' (x:xs) = max x (maximum' xs)

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = (f x y) : zipWith' f xs ys

quicksort' :: (Ord a) => [a] -> [a]
quicksort' [] = []
quicksort' (x:xs) = 
    let biggerS = quicksort' $ filter (> x) xs
        smallerS = quicksort' $ filter (<= x) xs
    in smallerS ++ [x] ++ biggerS

largestDiv :: Integer
largestDiv = head . filter p $ [100000,99999..]
  where p x = x `mod` 3829 == 0

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | even n = n:chain (n `div` 2)
  | odd n = n:chain (n * 3 + 1)

numLongestChain :: Int
numLongestChain = length . filter (\xs -> length xs > 15) $ map (chain) [1..100]

flip' :: (a -> b -> c) -> b -> a -> c
flip' f a b = f b a

maximum1' :: (Ord a) => [a] -> a
maximum1' [] = error "Empty list"
maximum1' (x:xs) = foldl (max) x xs