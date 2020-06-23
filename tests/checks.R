
## The function calls just validate that by going via RcppXts to xts, we still obtain
## the same xts functionality.  The main purpose of this package is still to access xts
## functionality while at the C++ layer.

library(RcppXts)

options("digits.secs"=6)

X  <- xts(1:4, order.by=Sys.time()+0:3)
X2 <- xts(1:4, order.by=Sys.time()+4:7)


stopifnot( xtsIsOrdered(X) )
stopifnot( xtsCoredata(X) == coredata(X) )
stopifnot( xtsIs(X) )
stopifnot( all.equal(coredata(xtsTry(as.zoo(X))), coredata(X) ) )
stopifnot( all.equal(index(xtsTry(as.zoo(X))), index(X) ) )
xtsRbind(X, X2, FALSE)
xtsRbind(X, X, TRUE)
xtsNaCheck(X)
Y <- X
xtsLag(Y, 2L, TRUE)

Y <- X
index(Y)[2] <- index(Y)[3]
Y
#xtsMakeIndexUnique(Y, 0.001)

Y <- X
index(Y)[2] <- index(Y)[3]
xtsMakeUnique(Y, 0.5)

X  <- xts(1:20, order.by=Sys.time()+(0:19)*60)
xtsEndpoints(index(X), 60L, 4, TRUE)     # every fourth minute, incl last
xtsEndpoints(index(X), 60L, 4, FALSE)    # every fourth minute

Y <- 2*X
#index(Y) <- index(Y) + runif(length(X)) * 0.01
#xtsMerge(X, Y, c(TRUE,TRUE), TRUE, TRUE, "a", "b", TRUE, new.env(), 0)

Y2 <- Y[1:10]
Y2[2] <- NA
xtsNaOmit(Y2)

#xtsMerge(X, X, c(TRUE,TRUE), TRUE, TRUE, c("a", "b"), NULL, TRUE, new.env(), 0)

Y2 <- X2
Y2[3] <- NA
Y2
xtsNaLocf(Y2, FALSE, 1, Inf)
