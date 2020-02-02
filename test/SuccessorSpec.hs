module SuccessorSpec where

import MyCode           -- the code under test
import Test.Hspec       -- for unit testing
import Test.QuickCheck  -- for property-based testing

{- Testing mySuccessor -}
mySuccessorSpec :: Spec
mySuccessorSpec =      
    describe "MyCode.mySuccessor" $  do

        -- Unit testing: test one input / output pair for this function 
        context "mySuccessor 0" $  
            it "should be 1" $ 
               mySuccessor 0 `shouldBe` 1

        -- Property-based testing: generate input / output pairs according
        -- to a specification
        context "when given a number n" $  
            it "should return the number n + 1" $ property $
                \n -> mySuccessor n == n + 1

{- Testing mySuccessor' -}
mySuccessorSpec' :: Spec
mySuccessorSpec' =      
    describe "MyCode.mySuccessor'" $  do

        -- Model testing: generate inputs and test against 
        -- a reference implementation (in this case, mySuccessor)
        context "when given a number n" $  
            it "should return the same as mySuccessor n" $ property $
                \n -> mySuccessor' n == mySuccessor n

                
spec :: Spec
spec = do 
    describe "mySuccessor" mySuccessorSpec
    describe "mySuccessor'" mySuccessorSpec'


main :: IO ()
main = hspec spec