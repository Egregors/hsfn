maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where
    maxTail = maximum' xs

-- maximum with max
maximum'' :: (Ord a) => [a] -> a
maximum'' [] = error "empty"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum'' xs)

