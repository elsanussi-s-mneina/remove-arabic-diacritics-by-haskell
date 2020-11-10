module Main (main) where

import LittleTest

import qualified ArabicDiacriticRemovalTests

main :: IO ()
main = 
  do
  LittleTest.reportOnTests ArabicDiacriticRemovalTests.tests
