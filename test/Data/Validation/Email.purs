module Test.Data.Validation.Email where

import Prelude (Unit, bind)

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

import Data.Validation.Email (validate)

testEmailValidation :: forall r. Spec r Unit
testEmailValidation =
  describe "validate" do
    it "invalidates an empty string" do
      validate "" `shouldEqual` false
    it "validates my email address" do
      validate "junk@clurictec.com" `shouldEqual` true
    it "validates unusual extensions" do
      validate "XonsaeifO@wordsonwords.media" `shouldEqual` true
