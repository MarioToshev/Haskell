
main :: IO ()    

-- wordsWhen :: (Char -> Bool) -> String -> [String]
-- wordsWhen p s =  case dropWhile p s of
--                       "" -> []
--                       s' -> w : wordsWhen p s''
--                             where (w, s'') = break p s'

reverseArray array =
    if null array
        then []
    else reverseArray (tail array) ++ [head array]

slice :: Int -> Int -> [a] -> [a]
slice from to xs = take (to - from + 1) (drop from xs)


-- ReplaceElementsInList startIndex endIndex array modifarray =
--     if startIndex == endIndex
--         then return array
--     else do
--     array !! startIndex : head modifarray
--     ReplaceElementsInLIst (startIndex +1) endIndex array (tail modifarray)

main = do
-- command <- getLine

-- if head (wordsWhen (==' ') command) == "end"
--       then print "The program ended"
-- else if  head (wordsWhen (==' ') command) == "reverse"


-- print $ (wordsWhen (==' ') command) !! 2
-- print $ (wordsWhen (==' ') command) !! 4
let a = ["az","ti","toi","tq","to"]
let reversedPart = reverseArray (slice 0 1 a)

-- print(ReplaceElementsInList(0 1 reversedPart a))


