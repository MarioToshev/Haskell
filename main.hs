main :: IO ()    


slice :: Int -> Int -> [a] -> [a]
slice from to xs = take (to - from + 1) (drop from xs)



a :: [Int]
a =
    [1, 2, 3, 4, 5]

counteven :: [Int] -> Int -> [Int]
counteven arr index =
if `mod` (arr !! index) 2 == 0
    then remove (arr !! index)  arr
else return arr


exchange :: Int -> [Int] -> [Int]     
exchange index arr = 
    (slice (index+1) (length arr - 1) arr) ++ (take (index +1) (init arr))
    

main = do
--print(exchange 2 ["1", "2", "3", "4", "5"])
print $ counteven a