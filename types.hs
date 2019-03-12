-- type declaration
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- Int 32, fast but bounded
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Integer, not so efficient, but may be really big
factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r
