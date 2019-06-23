listapares :: Int -> [Int]
listapares x = [x|x<-[0..x-1], mod x 2==0]
  