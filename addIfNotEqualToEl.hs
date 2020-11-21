
main :: IO ()

adddIfNotEqualToEl :: Eq a => [a] -> a -> [a]
adddIfNotEqualToEl array element = 
    if null array
        then array ++ [element]
    else if element == (last array)
        then array
    else array ++ [element]

main = do 
let a = [1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,5,5,7,8,1]
print $ foldl  adddIfNotEqualToEl [] a