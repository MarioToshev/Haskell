import Data.List (sort)

main :: IO ()    

-- wordsWhen :: (Char -> Bool) -> String -> [String]
-- wordsWhen p s =  case dropWhile p s of
--                       "" -> []
--                       s' -> w : wordsWhen p s''
--                             where (w, s'') = break p s'


slice :: Int -> Int -> [String] -> [String]
slice from to xs = take (to - from + 1) (drop from xs)
 

sortArray a  =
    sort a

--reverse Start
reverseArray :: [String] -> [String]
reverseArray array =
    if null array
        then []
    else reverseArray (tail array) ++ [head array]

replaceAtIndex :: Int -> String -> [String] -> [String]
replaceAtIndex n item ls = a ++ (item:b) where (a, (_:b)) = splitAt n ls

replaceReversedPart :: Int -> Int -> [String] -> [String] -> [String]
replaceReversedPart startIndex endIndex array reversedPart =
    if  startIndex > endIndex
        then array
    else do 
        let a =replaceAtIndex startIndex (head reversedPart) array
        replaceReversedPart (startIndex + 1) endIndex a (tail reversedPart)
        
--reverse End

reverseArr :: Int -> Int -> [a] -> [a]
reverseArr start count arr = take start arr ++ foldl (\array a -> [a] ++ array) [] (take count (drop start arr)) ++ drop (start + count) arr 

rollRight :: Int -> [a] -> [a]
rollRight count arr = 
    if  count == 0
        then arr 
    else rollRight (count-1)  ([last arr] ++ (init arr))

rollLeft :: Int -> [a] -> [a]
rollLeft count arr =
    if count == 0 
        then arr
else    rollLeft (count - 1)((tail arr) ++ [head arr])

a :: [String]
a =
    ["2","6","1","4","5"]
main = do
-- command <- getLine

-- if head (wordsWhen (==' ') command) == "end"
--       then print "The program ended"
-- else if  head (wordsWhen (==' ') command) == "reverse"


-- print $ (wordsWhen (==' ') command) !! 2
-- print $ (wordsWhen (==' ') command) !! 4

-- reverse from x to y
let reversedPart = reverseArray (slice 0 1 a)
print $ replaceReversedPart 0 1 a reversedPart


let sortedPart = sortArray(slice 0 2 a)
print $ replaceReversedPart 0 2 a sortedPart

print $ rollRight 6 a
print $ rollLeft 6 a


 