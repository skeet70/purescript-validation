module Main (validate) where
import Data.Validation.Email as Validation

validate :: String -> Boolean
validate = Validation.validate
