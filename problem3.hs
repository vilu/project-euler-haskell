{- The prime factors of 13195 are 5, 7, 13 and 29.
 What is the largest prime factor of the number 600851475143 ?
 -}
import Data.List

primes = 2 : [x | x <- [3..], isprime x]
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x)
            where
            factorsToTry x = takeWhile (\p -> p*p <= x) primes

target = 600851475143



relevantPrimes = takeWhile (\x -> x <= floor (sqrt (fromIntegral target))) primes

firstDivisiblePrime :: Int -> Maybe Int
firstDivisiblePrime x = find (\p -> x `mod` p == 0) (reverse relevantPrimes)

result = firstDivisiblePrime target