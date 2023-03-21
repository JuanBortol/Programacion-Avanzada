--Practice 1 
--Exercise 8 

--"Function that takes a certain number and turns it into a list of its digits (in reverse order)."
lsdigits:: Int -> [Int]
lsdigits 0 = []
lsdigits x = (mod x 10) : lsdigits (div x 10)

--This function reverts the list taken from lsdigitos output.
ej8 :: Int -> [Int]
ej8 xs = reverse (lsdigits xs)
