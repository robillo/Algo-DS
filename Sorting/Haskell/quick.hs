quicksort :: (Ord a) => [a] -> [a]
quicksort []     = []
quicksort (x:xs) =
  let smallerSort = quicksort [ a | a <- xs, a <= x ]
      biggerSort  = quicksort [ a | a <- xs, a > x ]
  in smallerSort ++ [x] ++ biggerSort
