-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
import Data.List
import Data.Maybe
import Util.Primes

range = [2..20]

isDivisible n d = n `mod` d == 0

findFactor x xs = find (\y -> isDivisible x y) (reverse $ sort xs)
-- 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
-- [2, 3, 2, 5, 7, 2, 3, 11, 13, 2, 17, 19]
result = foldl (\acc -> \x -> fromMaybe x (findFactor x acc) : acc) [] range

-- 1, 2, 3,   4  , 5,   6  , 7,     8    ,
-- 1, 2, 3, 2 (* 2), 5, 3 * 2, 7, 2 * 2 * 2, 

