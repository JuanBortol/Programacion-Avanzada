--Course: Programacion Avanzada
--Exercises from practice work nº2

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

-- EJERCICIO 3--

--maxOfThree returns the largest of three given numbers
maxOfThree:: Int -> Int -> Int -> Int
maxOfThree x y z = max x (max y z) 

