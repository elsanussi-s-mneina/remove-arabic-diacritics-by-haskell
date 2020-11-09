module Lower where
import Data.Char

lower :: Char -> Char
lower 'A' = 'a'
lower x = toLower x

upper :: Char -> Char
upper 'a' = 'A'
upper x = toUpper x 
