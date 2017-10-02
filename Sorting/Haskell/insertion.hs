insertion :: (Ord a) => [a] -> [a]
insertion []     = []
insertion (x:xs) = insert x (insertion xs)

insert :: (Ord a) => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys)
  | x <= y    = (x:y:ys)
  | otherwise = y : (insert x ys)
