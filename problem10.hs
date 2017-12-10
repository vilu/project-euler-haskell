import Util.Primes

result = sum $ takeWhile (\x -> x < 2000000) primes
