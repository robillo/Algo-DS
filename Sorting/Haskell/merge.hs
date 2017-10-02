mergesort :: (Ord a) => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (firstHalf xs)) (mergesort (secondHalf xs))

merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
  | x > y     = merge xs (y : merge [x] ys)
  | otherwise = merge (x : merge [y] xs) ys

firstHalf :: (Ord a) => [a] -> [a]
firstHalf [] = []
firstHalf lst = take (div (length lst) 2) lst

secondHalf :: (Ord a) => [a] -> [a]
secondHalf [] = []
secondHalf lst = drop (div (length lst) 2) lst
