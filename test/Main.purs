module Test.Main where

import Prelude (Unit)
import Control.Monad.Eff (Eff)

import Test.Spec (describe)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (RunnerEffects, run)

import Test.Data.Validation.Email (testEmailValidation)

main :: Eff (RunnerEffects ()) Unit
main = run [consoleReporter] do
  describe "purescript-validation" do
    describe "Validation" do
      describe "Email" do
        testEmailValidation
