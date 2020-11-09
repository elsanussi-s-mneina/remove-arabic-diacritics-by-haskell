module LittleTest where


data Test = Test (String, Bool)

runTests :: [Test] -> [String]
runTests [] = []
runTests (Test (testName, hasPassed):xs) = 
  (if hasPassed
  then "Passed: " ++ testName
  else "Not passed: " ++ testName) : runTests xs

runFailingTests :: [Test] -> [String]
runFailingTests tests = 
  runTests (filter (\(Test (_, y)) -> not y) tests)

reportOnTests :: [Test] -> IO ()
reportOnTests tests =
  do
  putStrLn (unlines (runTests tests))
  let failingTestCount = length (runFailingTests tests)
  putStrLn ("Failing Tests: " ++ show failingTestCount)
  if failingTestCount > 0
  then putStrLn (unlines (runFailingTests tests))
  else return ()