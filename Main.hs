{-# LANGUAGE LambdaCase #-}
module Main where

import System.Environment
import Control.Monad.Reader
import Resume
import TeX (Mode (..))

main :: IO ()
main = getArgs >>= \case
  ["cn"]   -> f Chinese
  ["en"]   -> f English
  ["elab"] -> f Elaborated
  _        -> putStrLn $ unlines
    [ "Usage: <program> MODE"
    , "MODE can be cn, en or elab"
    ]
  where f = putStrLn . runReader resume
