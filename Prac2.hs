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

----------EXERCISE Nº3 --------------

--concaten concatenates two lists of strings. 

concaten:: [a] -> [a] -> [a]
concaten   []  xs = xs
concaten   (x:xs) ys = x : concaten xs ys


--tkn Given a list and a number, returns the list of the first n elemnts. 

tkn:: [a] -> num -> [a]
tkn xs 0 = []
tkn [] n = []
tkn (x:xs) n= x: tkn xs (n-1)

