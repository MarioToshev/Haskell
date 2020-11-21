
main :: IO ()



rep :: Int -> Int -> [Int]
rep  n x =
    if n == 1
    then [x]
    else  x : rep (n - 1) x 

repList n (x:xs) =
    if null xs
        then rep x n
    else rep n x ++ repList n xs


         
main = do 
let list = [1,2,3,4,5]
let n = 5
print (repList n list )