module ArabicDiacriticRemoval where
import Data.Char

arabic_fathatan, arabic_dammatan, arabic_kasratan, arabic_fatha, arabic_damma,  arabic_kasra, arabic_shadda, arabic_sukun, arabic_subscript_alef, arabic_letter_superscript_alef :: Char
arabic_fathatan = '\x064B'
arabic_dammatan = '\x064C'
arabic_kasratan = '\x064D'
arabic_fatha = '\x064E'
arabic_damma = '\x064F'
arabic_kasra = '\x0650'
arabic_shadda = '\x0651'
arabic_sukun = '\x0652'
arabic_subscript_alef = '\x0656'
arabic_letter_superscript_alef = '\x0670'



diacritics :: [Char]
diacritics = [arabic_fathatan, arabic_dammatan, arabic_kasratan, arabic_fatha, arabic_damma,  arabic_kasra, arabic_shadda, arabic_sukun, arabic_subscript_alef, arabic_letter_superscript_alef]

isDiacritic :: Char -> Bool
isDiacritic x = x `elem` diacritics 

isNotDiacritic :: Char -> Bool
isNotDiacritic x = not (isDiacritic x) 


removeDiacritics :: String -> String
removeDiacritics xs =
  filter isNotDiacritic xs
