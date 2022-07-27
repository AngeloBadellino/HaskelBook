-- We do not have a type constructor so we cannot
-- instanciate a value of this type diretly
data DayOfWeek = 
    Mon | Tue | Wed | Thu | Fri | Sat | Sun
    deriving Show

-- We can use it in here however
data Date = Date DayOfWeek Int

instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Wed Wed = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False

instance Ord DayOfWeek where
    compare Mon Mon = EQ
    compare _ Mon = GT
    compare Mon _ = LT
    compare _ _ = EQ

-- The compile can infer the weekday and dayOfMont type
instance Eq Date where
    (==) (Date weekday dayOfMonth)
         (Date weekday' dayOfMonth') =
         weekday == weekday' 
      && dayOfMonth == dayOfMonth'
         

--- EQ Exercises
data TisAnInt = TisAn Integer

instance Eq TisAnInt where
    (==) (TisAn v)  (TisAn v') = v == v'

data TwoIntegers = Two Int Int

instance Eq TwoIntegers where
    (==) (Two a b) (Two c d) = 
         a == c && b == d

data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt a) (TisAnInt b) = a == b
    (==) (TisAString c) (TisAString d) = c == d
    (==) _ _ = False

data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair a b) (Pair c d) = 
         a == c && b == d

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple c d) =
         a == c && b == d

data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne b) = a == b
    (==) (ThatOne c) (ThatOne d) = c == d
    (==) _ _ = False

data EitherOr a b = Hello a | Bye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello b) = a == b
    (==) (Bye c) (Bye d) = c == d
    (==) _ _ = False