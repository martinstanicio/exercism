module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all (\c -> elem (toUpper c) (map toUpper text)) ['A' .. 'Z']
