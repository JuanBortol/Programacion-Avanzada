--Practica 1 
--Ejercicio 8 

lsdigitos:: Int -> [Int]
lsdigitos 0 = []
lsdigitos x = (mod x 10) : lsdigitos (div x 10)

ej8 :: Int -> [Int]
ej8 xs = reverse (lsdigitos xs)
