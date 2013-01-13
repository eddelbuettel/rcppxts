\name{RcppXts-package}
\alias{RcppXts-package}
\alias{RcppXts}
\alias{coredata_}
\alias{isOrdered_}
\alias{isXts_}
\alias{naCheck_}
\alias{tryXts_}
\docType{package}
\title{Interface to the C API of xts}
\description{This package helps with an Rcpp-based interface to the API
  of the \pkg{xts} package.}
\usage{
  coredata_(x)
  isOrdered_(x, increasing, strictly)
  isXts_(x)
  naCheck_(x, check)
  tryXts_(x)
}
\arguments{
  \item{x}{an \code{xts} object}
  \item{increasing}{a boolean switch}
  \item{strictly}{a boolean switch}
  \item{check}{a boolean switch}
}
\author{Dirk Eddelbuettel}
\keyword{package}
\seealso{\code{\link[xts:xts-package]{xts}}}
