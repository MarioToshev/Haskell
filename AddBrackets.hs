
main :: IO ()

mathExpression :: [Int] -> String
mathExpression [] = ""
mathExpression arr =
    foldl (\x y -> concat ["(",x,"+",y,")"]) (show(last arr)) (map show (init arr))


main = do 
    let arr = [1, 2, 3, 4, 5]
    print $ mathExpression arr