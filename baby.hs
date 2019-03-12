doubleMe x = x + x 
doubleUs x y = doubleMe x + doubleMe y

-- else in if statement is mandatory
doubleSmallNumber x = if x > 100 then x else x*2
-- ' - is valid char for func name
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- if func does not take any params it is a "name" or "definition"
conanO'Brien = "It's a-me, Conan O'Brien!" 

-- `let x = 1` in GHCi is `x = 1` in the script
-- lists is homogenous
lostNumbers = [4, 8, 15, 16, 23, 42]

-- strings is lists, "hi" is ["h", "i"]
f = "foo"
b = "bar"

-- so, we may use list operations for strings

-- ++ for concat lists
fb = f ++ b

-- : for cons
cat = 'a':" small cat"

-- !! get by index
lst = [1, 2, 3, 4, 5]
lst2 = l !! 1 -- 2

-- other funcs for lists
l = [5, 4, 3, 2, 1]

-- head return head ;)
ff = head l -- 5

-- tail return all except head
fff = tail l -- [4, 3, 2, 1]

-- last return last element of list
ffff = last l -- 1

-- init return all except first element
fffff = init l -- [5, 4, 3, 2]

-- length
fl = length l

-- null for check is the list is empty
flTrue = null []
flFalse = null l

-- reverse 
fr = reverse l 

-- take n l for taking first n elements of list l
ftThree = take 3 l -- [5, 4, 3]

-- drop n l for taking all elements except first n
fdThree = drop 3 l -- [2, 1]

-- maximum and minimum
fmax = maximum l -- 5
fmin = minimum l -- 1

-- sum 
fsum = sum l -- 15

-- product
fproduct = product l -- 120

-- `elem` for check if the element in the list
felemTrue = 4 `elem` l -- True
felemFalse = 19 `elem` l -- False

-- ranges
intRange = [1..10] -- [1, 2, 3, 4, 5, 6, 7, 8, 9. 10]
intBackRange = [5,4..1] -- [5, 4, 3, 2, 1]
chRange = ['a'..'d'] -- "abcd"

-- infinity lists
infInt = [1,2..] -- [1, 2, 3, .. until the and :( ]
getFirst24 = take 24 [13,26..] -- [13,26,39,52,65,78,91,104,117,130,143,156,169,182,195,208,221,234,247,260,273,286,299,312]

-- useful func for inf lists
-- cycle
cycleInt = take 10 (cycle [1, 2, 3]) -- [1,2,3,1,2,3,1,2,3,1]

-- repeat
repeatInt = take 3 (repeat 42) -- [42,42,42]

-- replicate n k, return element k n times
replicateInt = replicate 3 10 -- [10,10,10]

-- list comprehensions
listComp = [x*2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]
listCompWithPredicate = [x*2 | x <- [1..10], x*2 >= 12] -- [12,14,16,18,20]
listCompWithPredicate' = [ x | x <- [50..100], x `mod` 7 == 3] -- [52,59,66,73,80,87,94]

boomBangs xs = [ if x < 10 then "BOOM" else "BANG" | x <- xs, odd x ] 
-- *Main> boomBangs [7..13]
-- ["BOOM","BOOM","BANG","BANG"]

-- *Main> [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]  
-- [10,11,12,14,16,17,18,20] 

-- list comp with draw (will use all combinations)
listCompDraw = [ x*y | x <- [2, 5, 10], y <- [8, 10, 11] ] -- [16,20,22,40,50,55,80,100,110]
listCompDrawWithIf = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] -- [55,80,100,110]

-- custom length by list comprehensions
length' xs = sum [1 | _ <- xs]

-- with strings
removeNonUppercase st = [ch | ch <- st, ch `elem` ['A'..'Z']] -- "HW"

-- nested comprehensions
xss = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]] 
evenInts = [ [x | x <- xs, even x] | xs <- xss ] -- [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]]

-- Tuples
t = ("answer", 42)

-- fst return first element of tuple
tF = fst t -- "answer"

-- snd reruen second element of tuple
tS = snd t -- 42

-- zip l1 l2 for zip two lists into list of tuples [(a, b), (a1, b1), ...]
numsAndWords = zip [1..5] ["one", "two", "three", "four", "five"]
fruts = zip [1..] ["orange", "apple", "banana", "mango"]


-- triangles promlem (example)
-- get all right triangles for side sizes 1..10 and perimetr == 24
triangles = [ (x, y, z) | x <- [1..10], y <- [1..10], z <- [1..10], x^2 + y^2 == z^2, x+y+z == 24 ] -- [(6,8,10),(8,6,10)]
