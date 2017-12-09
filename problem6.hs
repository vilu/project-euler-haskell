
range :: [Integer]
range = take 100 [1..]

expEach = sum $ fmap (\x -> x * x) range
expAll = sum range ^ 2

result = expAll - expEach