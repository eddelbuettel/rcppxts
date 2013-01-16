
library(RcppXts)

X  <- xts(1:4, order.by=Sys.time()+0:3)
X2 <- xts(1:4, order.by=Sys.time()+4:7)


stopifnot( isOrdered_(X) )
stopifnot( coredata_(X) == coredata(X) )
stopifnot( isXts_(X) )
stopifnot( tryXts_(as.zoo(X)) )
rbindXts_(X, X2, FALSE)
rbindXts_(X, X, TRUE)
naCheck_(X)
lagXts_(X, 2L, TRUE)
