import Data.Char (isLower, isUpper)

filtraPar :: (t->Bool)->(a->Bool)-> [t]->[a]->[(t,a)]
filtraPar f1 f2 l1 l2 = [(x,y) | x<-(filter f1 l1), y<-(filter f2 l2)]