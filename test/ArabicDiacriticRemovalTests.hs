module ArabicDiacriticRemovalTests (tests) where

import ArabicDiacriticRemoval

import LittleTest (Test(Test))

-- See https://www.unicode.org/charts/PDF/U0600.pdf for
-- Unicode values. Based on The Unicode Standard, Version 13.0.

makeTest :: String -> String -> String -> Test
makeTest testName inputString expectedOutput = Test (testName, removeDiacritics inputString == expectedOutput)

arabic_fathatanSpec = makeTest "Removes ARABIC FATHATAN (U+064B)" "\x064B" ""
arabic_fathatanTwiceSpec = makeTest "Removes ARABIC FATHATAN (U+064B) twice" "\x064B\x064B" ""
arabic_dammatanSpec = makeTest "Removes ARABIC DAMMATAN (U+064C)" "\x064C" ""
arabic_kasratanSpec = makeTest "Removes ARABIC KASRATAN (U+064D)" "\x064D" ""
arabic_fathaSpec = makeTest "Removes ARABIC FATHA (U+064E)" "\x064E" ""
arabic_dammaSpec = makeTest "Removes ARABIC DAMMA (U+064F)" "\x064F" ""
arabic_kasraSpec = makeTest "Removes ARABIC KASRA (U+0650)" "\x0650" ""
arabic_shaddaSpec = makeTest "Removes ARABIC SHADDA (U+0651)" "\x0651" ""
arabic_sukunSpec = makeTest "Removes ARABIC SUKUN (U+0652)" "\x0652" ""
arabic_subscript_alefSpec = makeTest "Removes ARABIC SUBSCRIPT ALEF (U+0656)" "\x0656" ""

tests :: [Test]
tests = 
  [ arabic_fathatanSpec
  , arabic_fathatanTwiceSpec
  , arabic_dammatanSpec
  , arabic_kasratanSpec
  , arabic_fathaSpec
  , arabic_dammaSpec
  , arabic_kasraSpec
  , arabic_shaddaSpec
  , arabic_sukunSpec
  , arabic_subscript_alefSpec
  ]


  
