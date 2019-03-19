-- functions
-- pattern matching (like select | switch case)
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- bad way
-- addVectors a b = (fst a + fst b, snd a + snd b)
-- good way
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

-- the same in the list comp's
-- ghci> let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
-- ghci> [a+b | (a,b) <- xs]
-- [4,7,6,8,11,4]
head' :: [a] -> a
head' []    = error "Can't call head on an empty list"
head' (x:_) = x

length' :: (Num b) => [a] -> b
length' []     = 0
length' (_:xs) = 1 + length' (xs)

sum' :: (Num a) => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital ""         = "empty string"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

--
bimTell :: (RealFloat a) => a -> String
bimTell bim
  | bim <= 18.5 = "underweight"
  | bim <= 25.0 = "normal"
  | bim <= 30.0 = "fat ass"
  | otherwise = "mom"

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

--
myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT

--
bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
  | bmi <= skinny = "You're underweight, you emo, you!"
  | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= fat = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2
    skinny = 18.5
    normal = 25.0
    fat = 30.0

--
initials :: String -> String -> String
initials first last = [f] ++ ". " ++ [l]
  where
    (f:_) = first
    (l:_) = last

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where
    bmi weight height = weight / height ^ 2

