module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1 = Nothing
  | otherwise = Just $ c n
  where
    c 1 = 0
    c m
      | even m = 1 + c (m `div` 2)
      | otherwise = 1 + c (3 * m + 1)
