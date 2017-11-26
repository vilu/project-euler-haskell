-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.
import Data.List

isPalindrome :: Int -> Bool
isPalindrome x = isPalindromeStr $ show x
                 where isPalindromeStr s = s == reverse s
                    

result = maximum $ filter isPalindrome [x * y | x <- [999, 998..100], y <- [999, 998..100]]
