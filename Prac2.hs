--Course: Programacion Avanzada
--Exercises from practice work nº2

--hd is an analogous function to head
hd:: [a] -> a
hd [] = error "Lista vacia"
hd (x:xs) = x

--tl is an analogous function to tail 
tl:: [a] -> [a]
tl [] = error "Lista vacia"
tl [x] = [x]
tl (x:xs) = xs

--lst returns the last element in the list.(Analogous to last)
lst:: [a] -> a
lst [] = error "Lista Vacia"
lst [x] = x
lst (x:xs) = lst (xs)

--inic returns a given list but the last element.(Analogous to init)
inic:: [a]->[a]
inic [] = []
inic [x] = []
inic (x:xs) = x: inic (xs)

-- EJERCICIO 3--

--maxTres returns the largest of three given numbers
maxTres:: Int -> Int -> Int -> Int
maxTres x y z = max x (max y z) 

