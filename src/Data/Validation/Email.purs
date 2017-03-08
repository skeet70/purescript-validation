module Data.Validation.Email (validate) where

import Data.String.Regex (Regex, test)
import Data.String.Regex.Flags (noFlags)
import Data.String.Regex.Unsafe (unsafeRegex)

emailAddress :: Regex
emailAddress = unsafeRegex ".+@.+.[a-z]+" noFlags

validate :: String -> Boolean
validate = test emailAddress
