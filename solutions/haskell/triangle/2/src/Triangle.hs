module Triangle (TriangleType (..), triangleType) where

data TriangleType
  = Equilateral
  | Isosceles
  | Scalene
  | Illegal
  deriving (Eq, Show)

triangleType :: (Num a, Ord a) => a -> a -> a -> TriangleType
triangleType a b c
  | a <= 0 = Illegal
  | b <= 0 = Illegal
  | c <= 0 = Illegal
  | a + b < c = Illegal
  | b + c < a = Illegal
  | a + c < b = Illegal
  | a == b && b == c = Equilateral
  | a == b = Isosceles
  | b == c = Isosceles
  | a == c = Isosceles
  | otherwise = Scalene
