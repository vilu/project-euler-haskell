import Data.List

hypothenuse :: Int -> Int -> Float
hypothenuse a b = sqrt(aa + bb) 
                    where
                        aa = fromIntegral a ^ 2
                        bb = fromIntegral b ^ 2
sides :: [(Int, Int, Float)]
sides =  map (\(a, b) -> (a, b, hypothenuse a b )) [(a,b) | a <- [1..500], b <- [1..500]]

isSum :: (Int, Int, Float) -> Bool
isSum (a, b, c) = fromIntegral a + fromIntegral b + c == 1000

result = fmap (\(a,b,c) -> fromIntegral(a) * fromIntegral(b) * c) $ find isSum sides