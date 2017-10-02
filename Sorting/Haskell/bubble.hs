bubblesort :: (Ord a) => [a] -> [a]
bubblesort list
  | isOrdered list = list
  | otherwise      = bubblesort (bubblesortpass list)

bubblesortpass :: (Ord a) => [a] -> [a]
bubblesortpass [] = []
bubblesortpass (x:body@(y:ys))
  | x >= y    = y : bubblesortpass (x : ys)
  | otherwise = x : bubblesortpass body
bubblesortpass (x:xs) = x : bubblesortpass xs

isOrdered :: (Ord a) => [a] -> Bool
isOrdered [] = True
isOrdered (x:body@(y:ys))
  | x > y     = False
  | otherwise = isOrdered body
isOrdered (x:xs) = isOrdered xs
