{- The prime factors of 13195 are 5, 7, 13 and 29.
 What is the largest prime factor of the number 600851475143 ?
 -}
import Data.List


-- I don't know how to import a module in haskell yet.
-- When I do I'll use this from util/Primes.hs instead of copy and paste like now
inefficientPrimes :: Int -> [Int]
inefficientPrimes n = sieve [2..n]
                      where
                      sieve (x:xs) = x : sieve (xs \\ [x,x+x..n])
                      sieve [] = []

primes :: [Int]                      
primes = inefficientPrimes 10000 -- Just randomly picked number of primes

firstDivisiblePrime :: Int -> Maybe Int
firstDivisiblePrime x = find (\p -> x `div` p == 0) primes

primeFactors :: Int -> [Int]
primeFactors n = run n []
                 where 
                    run p (x:xs)
