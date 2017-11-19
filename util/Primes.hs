module Primes where
import Data.List

inefficientPrimes :: Int -> [Int]
inefficientPrimes n = sieve [2..n]
                      where
                      sieve (x:xs) = x : sieve (xs \\ [x,x+x..n])
                      sieve [] = []