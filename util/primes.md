# Primes

A prime number is a positive natural number that is divisable only by itself and 1.

## Sieve of Erathostenes

Iteratively finds primes by marking composites (i.e. not primes) the multiples of each found prime by starting with the first prime number (2). 

1. Remove all multiples of 2 from the set
1. Pick the next available number, 3, remove all multiples of 3 from the set.
1. Pick 5, remove all multiples of 5 from the set.
1. Pick 7 ......
