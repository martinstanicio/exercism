module Strain (keep, discard) where

discard :: (a -> Bool) -> [a] -> [a]
discard p xs = keep (not . p) xs

keep :: (a -> Bool) -> [a] -> [a]
keep _ [] = []
keep func (x : xs) = if func x then (x : (keep func xs)) else keep func xs
