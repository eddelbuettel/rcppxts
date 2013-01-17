\name{RcppXts-package}
\alias{RcppXts-package}
\alias{RcppXts}
\alias{xtsIs}
\alias{xtsIsOrdered}
\alias{xtsNaCheck}
\alias{xtsTry}
\alias{xtsRbind}
\alias{xtsCoredata}
\alias{xtsLag}
\docType{package}
\title{Interface to the C API of xts}
\description{This package helps with an Rcpp-based interface to the API
  of the \pkg{xts} package.}
\usage{
  xtsIs(x)
  xtsIsOrdered(x, increasing, strictly)
  xtsNaCheck(x, check)
  xtsTry(x)
  xtsRbind(x, y, dup)
  xtsCoredata(x)
  xtsLag(x, k, pad)
}
\arguments{
  \item{x}{an \code{xts} object}
  \item{y}{an \code{xts} object}
  \item{increasing}{a boolean switch}
  \item{strictly}{a boolean switch}
  \item{check}{a boolean switch}
  \item{dup}{a boolean switch whether to remove duplicates}
  \item{k}{an integer denoting lag length}
  \item{pad}{a boolean switch whether to pad}
}
\author{Dirk Eddelbuettel}
\keyword{package}
\seealso{\code{\link[xts:xts-package]{xts}}}
