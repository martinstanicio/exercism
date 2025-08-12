module Darts (score) where

score :: Float -> Float -> Int
score x y
  | d > 10 = 0
  | d > 5 = 1
  | d > 1 = 5
  | otherwise = 10
  where
    d = sqrt (x ^ 2 + y ^ 2)
