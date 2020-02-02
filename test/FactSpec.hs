module FactSpec where

import MyCode           -- the code under test
import Test.Hspec       -- for unit testing

{- Testing fact -}
spec :: Spec
spec =      
    describe "fact" $  do

        context "fact 0" $  
            it "should be 1" $ 
               fact 0 `shouldBe` 1

        context "fact 1" $  
            it "should be 1" $ 
               fact 1 `shouldBe` 1

        context "fact 5" $  
            it "should be 1" $ 
               fact 5 `shouldBe` 120

main :: IO ()
main = hspec spec