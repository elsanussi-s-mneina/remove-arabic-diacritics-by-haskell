import System.Environment
import System.Console.GetOpt
import System.IO
import Lower


----Command line options----
data Action = Lower | Upper  deriving (Show, Eq)
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
  , optAction = Upper
  }

options :: [OptDescr (Options -> Options)]
options =
  [ Option ['l'] ["lower"]
    (NoArg (\ opts -> opts { optAction = Lower}))
    "Make letters lowercase"
  , Option ['u'] ["upper"]
    (NoArg (\ opts -> opts { optAction = Upper}))
    "Make letters uppercase"
  ]

translitOptions :: [String] -> IO (Options, [String])
translitOptions argv =
  case getOpt Permute options argv of
    (options, nonOptions, []    ) -> return (foldl (flip id) defaultOptions options, nonOptions)
    (_,       _,          errors) -> ioError $ userError $ concat errors ++ usageInfo header options
  where header = "Usage: exe [OPTION...] filename"

chooseTranslitFunc :: Action -> (Char -> Char)
chooseTranslitFunc Lower = lower
chooseTranslitFunc Upper = upper


main :: IO ()
main =
  do
  argv <- getArgs
  (opts, fname) <- translitOptions argv
  let translitFunc = chooseTranslitFunc (optAction opts)
  if length fname == 1
  then do
      putStrLn ("The file name is " ++ (concat fname))
      handle <- openFile (fname !! 0) ReadMode
      contents <- hGetContents handle
      putStrLn (map translitFunc contents)
      hClose handle
  else do 
       ll <- getContents 
       putStrLn $ (map translitFunc ll)
