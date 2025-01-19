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

  let invalidList = [1,2,'a',4,5]
  let sortedInvalidList = sort invalidList -- This line will cause an error
  print sortedInvalidList
```