--Course: Programacion Avanzada
--Exercises from practice work nº2

----------EXERCISE Nº2 --------------

--hd is an analogous function to head
hd:: [a] -> a
hd [] = error "Empty list"
hd (x:xs) = x

--tl is an analogous function to tail 
tl:: [a] -> [a]
tl [] = error "Empty list"
tl [x] = [x]
tl (x:xs) = xs

--lst returns the last element in the list.(Analogous to last)
lst:: [a] -> a
lst [] = error "Empty list"
lst [x] = x
lst (x:xs) = lst (xs)

--inic returns a given list but the last element.(Analogous to init)
inic:: [a]->[a]
inic [] = []
inic [x] = []
inic (x:xs) = x: inic (xs)

----------EXERCISE Nº3 --------------

--maxOfThree returns the largest of three numbers.
maxOfThree:: Int -> Int -> Int -> Int
maxOfThree x y z = max x (max y z) 

----------EXERCISE Nº4 --------------

--concaten concatenates two lists of strings. 

concaten:: [a] -> [a] -> [a]
concaten   []  xs = xs
concaten   (x:xs) ys = x : concaten xs ys


--tkn Given a list and a number, returns the list of the first n elements. 

tkn:: Int -> [a] -> [a]
tkn 0 xs  = []
tkn n []  = []
tkn n (x:xs) = x: tkn (n-1) xs 

--drp Given a list and a number, takes out the last n elements. 
drp:: Int -> [a] -> [a]
drp 0 xs = xs
drp n [] = []
drp n (x:xs) = drp (n-1) xs 

--addright adds an element 
addright:: a -> [a] ->[a]
addright x [] = [x]
addright y (x:xs) = x : addright y xs

----------EXERCISE Nº5 --------------
-- abst returns the absolute value of a number
abst:: Int -> Int
abst a | a>=0 = a
       | otherwise = -a

----------EXERCISE Nº6 --------------

--lp telss if a year is a leap year or not
lp:: Int -> Bool
lp a = ((mod a 400 == 0) || (mod a 100 /=0)) && (mod a 4 == 0) 
   

--years calculates years passed between two dates
years:: (Int,Int,Int) -> (Int,Int,Int) -> Int
years (d1,m1,y1)   (d2,m2,y2)  | m2<m1 = y2-y1-1
                               | m2>m1 = y2-y1 
                               | m2 == m1 && d2>d1 = y2-y1-1
                               |otherwise = y2-y1-1


----------EXERCISE Nº7 --------------

-- Xor Implementation

xor :: Bool -> Bool -> Bool 
xor a b = (not a && b) || (a && not b)




