-- Exercise 4.1

------- 1 --------
-- A function double that takes an integer and returns twice its value

main :: IO ()
main = do
  let showDouble = makeItDouble 2
  print showDouble

makeItDouble::Int -> Int
makeItDouble x = x * 2

------- 2 --------
-- A function ratio that takes two floating point numbers x and y and returns the ratio of
-- x + y to x − y.

main :: IO ()
main = do
  let calculatedRatio = calculateRatio 4.2 3.3
  print calculatedRatio

calculateRatio::Float -> Float -> Float
calculateRatio x y = (x+y)/(x-y)

------- 3 ---------
-- A function hypotenuse that calculates the length of the longest side of a right triangle (rechtwinkliges Dreieck ) from the lengths of the two shorter sides, according to the
-- “Pythagorean Theorem”. All lengths are assumed to be of type Double.
-- (Look up a square root function in Haskell on the internet.)

main :: IO ()
main = do
  let result = hypotenuse 4.2 3.3
  print result

hypotenuse::Double -> Double -> Double
hypotenuse base perp = sqrt((base * base) + (perp * perp))

------- 4 -----------
-- A function xIntercept that takes two numbers m and c representing respectively the
-- slope (Steigung) and the y-intercept (y-Abschnitt) of a straight line defined by the linear
-- equation y = mx + c. The function must return the x-intercept of the line (i.e. the
-- x-coordinate at which the line crosses the x-axis).

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
-- (Thompson 3.7): A function
-- threeDiff :: Integer -> Integer -> Integer -> Bool
-- so that the result of threeDiff m n p is True only if the three numbers n, m and p are
-- all pairwise different.
-- (Look up comparison operators for this.)


main :: IO ()
main = do
  let result = threeDiff 4 3 3
  print result

threeDiff :: Integer-> Integer-> Integer-> Bool
threeDiff m n p = if m == n || n == p || m == p then False else True

--------- 6 ----------
-- (Thompson 3.14): A function
-- averageThree :: Integer -> Integer -> Integer -> Float
-- that returns the average of three integers.
-- (Look up a conversion function from integers to other number types on the internet.)

main :: IO ()
main = do
  let result = averageThree 4 3 3
  print result

averageThree :: Integer-> Integer-> Integer-> Float
averageThree m n p = fromIntegral (m + n + p) / 3

--------- 7 ----------
-- A function arithmeticSum that takes three numbers a, n and d representing respectively
-- the starting value, the number of summands and the distance of an arithmetic series. An
-- arithmetic series is a sequence of n numbers such that starting from a there is a constant
-- difference d between the consecutive elements as follows:
-- a,(a + d),(a + 2d), . . . ,(a + (n − 1)d)
-- In this form,
-- arithmeticSum a n d =
-- Xn−1
-- k=0
-- (a + kd)
-- = a + (a + d) + (a + 2d) + . . . + (a + (n − 1)d).
-- To solve the exercise, use the following formula for programming your function:
-- Xn−1
-- k=0
-- (a + kd) = n(2a + (n − 1)d)
-- 2

main :: IO ()
main = do
  let result = arithmeticSum 4 3 3
  print result

arithmeticSum :: Integer-> Integer-> Integer-> Integer
arithmeticSum a n d = n * (2 * a + (n-1) * d) `div` 2

------- 11-------
-- A function hundreds that takes an integer and returns the digit that corresponds to the
-- hundred quantity of this number. For example:
-- hundreds 1234 ==> 2
-- hundreds 23 ==> 0
-- Notation: Above and in all the following exercises a statement like e ==> v represents a
-- Haskell evaluation of an expression e to a value v. Think of it as an equality == but
-- with a direction.

hundreds :: Int -> Int
-- hundreds :: Integral a => a -> a
hundreds    n   =  (n `div` 100) `mod` 10

--div 100: This operation removes the last two digits of the number. For example:

--1234 div 100 gives 12.
--23 div 100 gives 0.
--At this point, the result contains the digits starting from the hundreds place, but it may include additional digits to the left.

--mod 10: This operation extracts the last digit of the result from div 100. Since div 100 ensures the hundreds place becomes the last digit in the quotient:

--12 mod 10 gives 2 (the hundreds digit of 1234).
--0 mod 10 gives 0 (the hundreds digit of 23, which is essentially absent).
--Thus, mod 10 ensures we isolate the digit in the hundreds place, regardless of the size of the number.

--------- 12 ----------
-- A function middle that returns the middle character of a non-empty string. For example:
-- middle "wxAyz" ==> ’A’
-- middle "wxAy" ==> ’A’

main :: IO ()
main = do
  let result = middle "aiaia"
  print result

middle :: String-> Char
middle a = a !! ((length a) `div` 2) 

-- !! for the index


-- Exercise 4.2
-- Write down the type of the solution to the following problems first,
-- without writing down the solution itself just yet. Then use the search machine Hoogle (http:
-- //www.haskell.org/hoogle/), where you enter the type of a function to search for it.
-- 1. (Example) To find a function that takes a string and returns its length, enter the type
-- String -> Int into the search interface on http://www.haskell.org/hoogle/. There
-- will be many results. Find the desired one (it has an obvious name).
-- 2. (Thompson 3.12) Find a function that takes a character c (the type of characters is Char)
-- and changes it to upper-case. Note, if c is already upper-case or is not a letter, the function
-- should return c unchanged.
-- 3. Find a function that returns True when one string s is a substring of another string s
-- 0

length "Hello, world!" -- Output: 13
toUpper :: Char -> Char
isInfixOf :: Eq a => [a] -> [a] -> Bool






