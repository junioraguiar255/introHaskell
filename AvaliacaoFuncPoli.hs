import Data.Char (isLower, isUpper)

filtraPar :: (t->Bool)->(a->Bool)-> [t]->[a]->[(t,a)]
filtraPar f1 f2 l1 l2 = [(x,y) | x<-(filter f1 l1), y<-(filter f2 l2)]

analiseDados :: (Eq t) => [t] -> [(t,Int)]
analiseDados [] = []
analiseDados l1 = [(x,y) | x<-(headl1)), y <- (contador (==(head l1)) l1)]

contador :: (t->Bool)->[t]->Int
contador f1 lista = sum[ 1 | x<-filter f1 lista]