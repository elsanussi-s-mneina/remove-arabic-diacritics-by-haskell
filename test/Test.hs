module Main (main) where

import LittleTest

import qualified LowerTests

main :: IO ()
main = 
  do
  LittleTest.reportOnTests LowerTests.tests
