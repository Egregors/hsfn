-- some useful funcs

-- map
map' f xs = [f x | x <- xs]

-- filter
filter' f xs = [x | x <- xs, f x]

-- reduce
-- TODO: reduce