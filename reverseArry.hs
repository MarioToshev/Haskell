main :: IO()

reverseArray array =
    if null array
        then []
    else reverseArray (tail array) ++ [head array]

main = do
    -- print (reverse [1, 2, 3, 4, 5])

    let x = [1, 2, 3, 4, 5]
    print(reverseArray x)