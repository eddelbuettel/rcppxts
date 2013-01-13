
library(RcppXts)

X <- xts(1:4, order.by=Sys.time()+0:3)

isOrdered_(X)
coredata_(X)
isXts_(X)
tryXts_(as.zoo(X))
#rbindXts(X)
naCheck_(X)
