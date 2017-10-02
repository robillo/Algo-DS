selection :: (Ord a) => [a] -> [a]
selection [] = []
selection l = let s = minimum l in s : selection (delete s l)

delete :: (Eq a) => a -> [a] -> [a]
delete td l = [ x | x <- l, x /= td ]
