module BadAng where

area d = pi * (r / 2)
  where r = d / 2

exclamation :: String -> String
exclamation s = (++) s "!"
-- exclamation s = concat s "!":

takeLetterOut :: String -> Int -> Char
takeLetterOut s i = s !! i

takeLastWord :: String -> String
takeLastWord s = last $ words s

thirdLetter :: String -> Char
thirdLetter s = s !! 3

letterIndex :: Int -> Char
letterIndex n = "Pizza e mandolino" !! indexBase1
  where indexBase1 = n - 1

uglyReverse :: String -> String
uglyReverse s = let curry = take 5 s;
                    is = take 4 (drop 5 s)
                    awesome = take 7 (drop 9 s)
                in concat [awesome, is, curry]
