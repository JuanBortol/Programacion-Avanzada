-- Ejercicio 2 de Programacion avanzada

--Funcion analoga a head
hd:: [a] -> a
hd [] = error "Lista vacia"
hd (x:xs) = x

--Funcion analoga a tail 
tl:: [a] -> [a]
tl [] = error "Lista vacia"
tl [x] = [x]
tl (x:xs) = xs

--Funcion que devuelve el ultimo elemento
lst:: [a] -> a
lst [] = error "Lista Vacia"
lst [x] = x
lst (x:xs) = lst (xs)

--Funcion que retorna todos los elementos menos el ultimo
inic:: [a]->[a]
inic [] = []
inic [x] = []
inic (x:xs) = x: inic (xs)

-- EJERCICIO 3--

--Funcion maximo de 3 elementos
maxTres:: Int -> Int -> Int -> Int
maxTres x y z = max x (max y z) 

