main :: IO()


duplicate array =
    if null array
        then []
    else ([(head array)] ++ [(head array)]) ++ (duplicate (tail array))

main = do
  
   let a = [1,2,3]
   print(duplicate a)
