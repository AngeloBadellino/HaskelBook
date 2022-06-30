module BadAng where

{- REFACTOR LET INTO WHERE -}

-- let x = 3; y = 1000 in x * 3 + y
first     = x * 3 + 7
  where x = 3
        y = 1000

-- let y = 10; x = 10 * 5 + y in x * 5
second    = x * 5
  where x = 10 * 5 + y
        y = 10

{- let x = 7
       y = negate x
       z = y * 10
    in z / x + y
-}
third     = z / x + y
  where x = 7
        y = negate x
        z = y * 10

-- waxOn
waxOn     = x * 5
  where x = y ^ 2
        z = 8
        y = z + 7

triple x = x * 3

waxOff = triple waxOn