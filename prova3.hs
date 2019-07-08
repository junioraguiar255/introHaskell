import Data.List

-- Questão 1 --

filtraPar :: (t->Bool)->(t->Bool)->[t]->[t]->[(t,t)]
filtraPar f1 f2 l1 l2 = [(x,y) | x<-filter f1 l1, y<-filter f2 l2]

-- filtraPar (>3) (<4) [1,2,3,4,5,6] [8,4,7,1,5,2]

-- Questão 2 -- 

analiseDados :: Ord a => [a] -> [(a, Int)]
analiseDados lista = [(y, x) | (x,y)<-sort(agrup lista)]

agrup :: Eq a => [a] -> [(Int, a)]
agrup [] = []
agrup (x:xs) = (length $ x : takeWhile (==x) xs, x) : agrup (dropWhile (==x) xs)

-- analiseDados ['a','a','b','b','b','c'] 
