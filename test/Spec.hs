{-# OPTIONS_GHC -F -pgmF hspec-discover #-}
-- ^^^ from http://hspec.github.io/hspec-discover.html

{-

  To run _all_ the tets, from the top-level directory (the one containing
  your code), execute the following command:

    ghci -itest test/Spec.hs

  When the GHCI prompt comes up, type main:

    *Main> main

  Alternatively, you can compile the program into an executable:

    ghc -itest test/Spec.hs

  IMPORTANT:
  When you change your own code, you'll need to reload / recompile test/Spec.hs.
-}