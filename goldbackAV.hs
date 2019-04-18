goldback_fraca::Int->(Int,Int,Int)
goldback mod n 2 == 0 || n<5 = 0 -- caso nao for impar ou menor que 5
goldback n = goldbackImpl n (n-1) (n-1) 2

goldbackImpl::Int->Int->Int->Int->(Int,Int,Int)
goldbackImpl n primo_ant primo_seq primo_seq_seq
    |primo primo_ant == False || = goldbackImpl n (primo_ant-1) primo_seq primo_seq_seq
    |primo primo_seq == False = goldbackImpl n primo_ant (primo_seq-1) primo_seq_seq
    |primo primo_seq_seq == False = goldbackImpl n primo_ant primo_seq (primo_seq_seq-1)
    |primo_ant+primo_seq+primo_seq_seq==n ==(primo_ant,primo_seq,primo_seq_seq)
    |(primo_ant+primo_seq+primo_seq_seq)<n = goldbachImpl n primo_ant primo_seq (primo_seq_seq-1)
    |otherwise = goldbackImpl n primo_ant (primo_seq-1) primo_seq_seq




primo :: Int -> Bool
primo n = ehprimoImpl n (n-1)

ehPrimoImpl :: Int -> Int -> Bool
ehPrimoImpl n d
   |n==2 || n==1 = True
   |d==1 = True
   |mod n d == 0 = False
   |otherwise = ehPrimoImpl n (d-1)
