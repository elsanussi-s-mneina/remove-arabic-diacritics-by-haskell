module LowerTests (tests) where

import Lower

import LittleTest (Test(Test))

makeTest :: String -> Char -> Char -> Test
makeTest testName lowerChar upperChar = Test (testName, lower upperChar == lowerChar)

aSpec = makeTest "LATIN SMALL LETTER A (U+0061) for LATIN CAPITAL LETTER A (U+0041)" '\x0061' '\x0041'


tests :: [Test]
tests = 
  [ aSpec
  ]


  
