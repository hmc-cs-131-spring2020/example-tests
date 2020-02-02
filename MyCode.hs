module MyCode where

fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)

mySuccessor :: Integer -> Integer
mySuccessor n = n + 1

mySuccessor' :: Integer -> Integer
mySuccessor' = (+ 1)
