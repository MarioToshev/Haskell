
main :: IO ()


formatString =
   foldl (\seen x -> if x `elem` seen
                     then seen
                     else seen ++ [x]) []

main = do 
let a = [1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,5,5,7,8]
print(formatString a)