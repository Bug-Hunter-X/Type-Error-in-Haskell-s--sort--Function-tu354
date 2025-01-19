```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]

  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  -- Solution:
  -- 1. Use separate lists if you have different types:
  let ints = [1,2,4,5]
  let chars = ['a', 'b', 'c']
  let sortedInts = sort ints
  let sortedChars = sort chars
  print sortedInts -- Output: [1,2,4,5]
  print sortedChars -- Output: ['a','b','c']

  --2. Define a custom type and Ord instance if you need to sort mixed types with a specific comparison:
  data MyType = IntVal Int | CharVal Char deriving (Show)
  instance Ord MyType where
    compare (IntVal i) (IntVal j) = compare i j
    compare (CharVal c1) (CharVal c2) = compare c1 c2
    compare (IntVal _) (CharVal _) = LT  -- Custom comparison logic
    compare (CharVal _) (IntVal _) = GT

  let mixedList = [IntVal 1, CharVal 'a', IntVal 3, CharVal 'b']
  let sortedMixedList = sort mixedList
  print sortedMixedList -- Output: [CharVal 'a',IntVal 1,CharVal 'b',IntVal 3]
```