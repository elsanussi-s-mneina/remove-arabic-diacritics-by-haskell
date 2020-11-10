import System.Environment
import System.Console.GetOpt
import System.IO
import ArabicDiacriticRemoval (removeDiacritics)


----Command line options----
data Action = RemoveDiacritics  deriving (Show, Eq)
data Options =
  Options
  { optHelp :: Bool
  , optAction :: Action
  }
  deriving Show

defaultOptions :: Options
defaultOptions =
  Options
  { optHelp = False
  , optAction = RemoveDiacritics
  }

options :: [OptDescr (Options -> Options)]
options =
  [ Option ['r'] ["removed"]
    (NoArg (\ opts -> opts { optAction = RemoveDiacritics}))
    "remove diacritics"
  ]

translitOptions :: [String] -> IO (Options, [String])
translitOptions argv =
  case getOpt Permute options argv of
    (options, nonOptions, []    ) -> return (foldl (flip id) defaultOptions options, nonOptions)
    (_,       _,          errors) -> ioError $ userError $ concat errors ++ usageInfo header options
  where header = "Usage: exe [OPTION...] filename"

chooseInteractFunction :: Action -> (String -> String)
chooseInteractFunction RemoveDiacritics = removeDiacritics


main :: IO ()
main =
  do
  argv <- getArgs
  (opts, fname) <- translitOptions argv
  let interactFunc = chooseInteractFunction (optAction opts)
  if length fname == 1
  then do
      putStrLn ("The file name is " ++ (concat fname))
      handle <- openFile (fname !! 0) ReadMode
      contents <- hGetContents handle
      putStrLn (interactFunc contents)
      hClose handle
  else do 
       ll <- getContents
       putStrLn $ (interactFunc ll)
