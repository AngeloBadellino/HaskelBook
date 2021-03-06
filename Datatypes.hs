-- Return true id the world is palindrome
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

-- Custom ABS function
myAbs :: Integer -> Integer
myAbs x = if x > 0 then x else x * (-1)

-- Mixinf tuples
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst z)) 