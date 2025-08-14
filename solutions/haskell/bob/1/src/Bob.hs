module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor xs
  | null text = "Fine. Be that way!"
  | isAsking && isShouting = "Calm down, I know what I'm doing!"
  | isAsking = "Sure."
  | isShouting = "Whoa, chill out!"
  | otherwise = "Whatever."
  where
    text = filter (\x -> not (isSpace x)) xs
    letters = filter isLetter text
    isAsking = last text == '?'
    isShouting = any isLetter text && all isUpper letters
