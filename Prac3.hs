--Course: Programacion Avanzada
--Exercises from practice work nº3

----------EXERCISE Nº1 --------------  

--Merges two preordered lists
merge:: [Int] -> [Int] -> [Int]
merge [] [] = []
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys) | x<=y = x: merge xs (y:ys)
                    | otherwise = y: merge (x:xs) ys


----------EXERCISE Nº2 --------------

--searches minimum element
searchMin:: [Int] ->Int
searchMin [] = error "Empty List"
searchMin [x] = x
searchMin (x:xs) |x <= tailMin = x
                 |otherwise = tailMin
                 where tailMin = searchMin xs

 
--removes an element from a list
rmElem:: (Eq a) => a -> [a] -> [a]
rmElem n [] = []
rmElem n (x:xs) |n==x = xs
                |otherwise = x: rmElem n xs


--selectSmall (Selection sort implementation but taking smaller elements to the begining)
selectSmall:: [Int] -> [Int]
selectSmall [] = []
selectSmall (xs) = a : selectSmall (rmElem a xs) 
                    where a = searchMin (xs)

----------EXERCISE Nº3 --------------
--power of two (alternate solution)
powTwo:: Int -> Int 
powTwo 0 = 1
powTwo (n) = 2 * powTwo (n-1)

--addright adds an element 
addright:: a -> [a] ->[a]
addright x [] = [x]
addright y (x:xs) = x : addright y xs


--Given a number convert it to its binary equivalent 
decToBin :: Int -> Int
decToBin a | a == 0    = [0]
           | a == 1    = [1]
           | otherwise = mod a 2 + 10 * (decToBin (div a 2))



