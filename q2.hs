analiseDados :: (Eq t) => [t] -> [(t,Int)]
analiseDados [] = []
--analiseDados l1 = [(x,y) | x<-(head l1), y <- (contador (==(head l1)) l1)]

contador :: (t->Bool)->[t]->Int
contador f1 lista = sum[ 1 | x<-filter f1 lista]