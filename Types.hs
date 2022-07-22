
-- This function accept two arguments and return one result.
addStuff :: Integer -> Integer -> Integer
addStuff x y = x + y + 5

-- When evaluating haskell does the following. Es: addStuff 2 3
-- 1 = addStuff 2 that return the fucntion addStuff1 = y 2 + y + 5
-- 2 = addStuff1 3 that reduce to 2 + 3  

-- Those functions are equivalent to addStuff
addStuff_ :: Integer -> Integer -> Integer
addStuff_ x = \y -> x + y + 5

addStuff__ :: Integer -> Integer -> Integer
addStuff__ = \y x -> x + y + 5

addStuff___ :: Integer -> Integer -> Integer
addStuff___ = \x -> \y -> x + y + 5