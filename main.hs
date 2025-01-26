Exercise 4.1

------- 1 --------

main :: IO ()
main = do
  let showDouble = makeItDouble 2
  print showDouble

makeItDouble::Int -> Int
makeItDouble x = x * 2

------- 2 --------

main :: IO ()
main = do
  let calculatedRatio = calculateRatio 4.2 3.3
  print calculatedRatio

calculateRatio::Float -> Float -> Float
calculateRatio x y = (x+y)/(x-y)

------- 3 ---------

main :: IO ()
main = do
  let result = hypotenuse 4.2 3.3
  print result

hypotenuse::Double -> Double -> Double
hypotenuse base perp = sqrt((base * base) + (perp * perp))

------- 4 -----------

main :: IO ()
main = do
  let result = xIntercept 4.2 3.3
  print result

type Slope = Double
type YIntercept = Double
xIntercept::Slope -> YIntercept -> Double
xIntercept m c = if m == 0 then 0.0 else calculateXIntercept
  where calculateXIntercept = -c/m

-------- 5 ----------

main :: IO ()
main = do
  let result = threeDiff 4 3 3
  print result

threeDiff :: Integer-> Integer-> Integer-> Bool
threeDiff m n p = if m == n || n == p || m == p then False else True

--------- 6 ----------

main :: IO ()
main = do
  let result = averageThree 4 3 3
  print result

averageThree :: Integer-> Integer-> Integer-> Float
averageThree m n p = fromIntegral (m + n + p) / 3

--------- 7 ----------

main :: IO ()
main = do
  let result = arithmeticSum 4 3 3
  print result

arithmeticSum :: Integer-> Integer-> Integer-> Integer
arithmeticSum a n d = n * (2 * a + (n-1) * d) `div` 2

------- 11-------

hundreds :: Int -> Int
-- hundreds :: Integral a => a -> a
hundreds    n   =  (n `div` 100) `mod` 10

div 100: This operation removes the last two digits of the number. For example:

1234 div 100 gives 12.
23 div 100 gives 0.
At this point, the result contains the digits starting from the hundreds place, but it may include additional digits to the left.

mod 10: This operation extracts the last digit of the result from div 100. Since div 100 ensures the hundreds place becomes the last digit in the quotient:

12 mod 10 gives 2 (the hundreds digit of 1234).
0 mod 10 gives 0 (the hundreds digit of 23, which is essentially absent).
Thus, mod 10 ensures we isolate the digit in the hundreds place, regardless of the size of the number.

--------- 12 ----------

main :: IO ()
main = do
  let result = middle "aiaia"
  print result

middle :: String-> Char
middle a = a !! ((length a) `div` 2) 

!! for the index


Exercise 4.2

1)
length "Hello, world!" -- Output: 13
toUpper :: Char -> Char
isInfixOf :: Eq a => [a] -> [a] -> Bool

Exercise 4.3





