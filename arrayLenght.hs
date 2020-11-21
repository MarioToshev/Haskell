main :: IO()

reverseList lenght a    =
    if  null a
        then lenght
    else
        reverseList   (lenght + 1) (tail a)


main = do
  
   let a = [1,2,3]
   let num = 0
   print(reverseList num a)