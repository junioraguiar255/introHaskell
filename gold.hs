goldbach::Int->(Int,Int)
goldbach n = goldbachImpl n (n-1) 2

goldbachImpl::Int->Int->Int->(Int,Int)
goldbachImpl n primo_ant primo_seq
  |(primo primo_ant == False = goldbachImpl n (primo_ant-1) primo_seq)
  |(primo primo_seq == False = goldbachImpl n primo_ant (primo_seq+1))
  |(primo_ant+primo_seq==n == (primo_seq, primo_ant))
  |(primo_ant+primo_seq)<n = goldbachImpl n primo_ant (primo_seq+1)
  |otherwise = goldbachImpl n (primo_ant-1) 2