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
\alias{xtsEndpoints}
\alias{xtsMakeIndexUnique}
\alias{xtsMakeUnique}
\alias{xtsMerge}
\alias{xtsNaOmit}
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
  xtsEndpoints(x, on, k, addlast)
  xtsMakeIndexUnique(x, eps)
  xtsMakeUnique(x, eps)
  xtsMerge(x, y, all, fill, retclass, colnames, suffixes, retside, env, coerce)
  xtsNaOmit(x)
}
\arguments{
  \item{x}{an \code{xts} object}
  \item{y}{an \code{xts} object}
  \item{increasing}{a boolean switch}
  \item{strictly}{a boolean switch}
  \item{check}{a boolean switch}
  \item{dup}{a boolean switch whether to remove duplicates}
  \item{k}{an integer denoting lag length, or interval}
  \item{pad}{a boolean switch whether to pad}

  \item{on}{a numeric value for desired distance, measure in seconds, between endpoints}
  \item{addlast}{a boolean switch whether last value should be included}
  \item{eps}{a numeric value for the desired minimal difference between elements}
  \item{all}{a boolean vector with two elements indication whether left
    or right joins are desired}
  \item{fill}{a vector with value to be filled at the end, if needed;
    defaults to \code{NA}}
  \item{retclass}{a boolean switch indicating whether the return class
    attribute should be set; default is TRUE}
  \item{colnames}{a character vector with column names}
  \item{suffixes}{a character vector with column name suffixes; default is NULL}
  \item{retside}{a boolean switch of size two for the desired return
    dimension if these need to be set}
  \item{env}{an environment, possibly empty}
  \item{coerce}{an integer value indicating if coercion should be forced}
}
\details{Please use the \pkg{xts} sources as the ultimate reference for
  these variables. The R functions in package \pkg{xts} set some of
  these values up, and the \pkg{RcppXts} package could eventually shadow
  some of this.}
\author{Dirk Eddelbuettel}
\keyword{package}
\seealso{\code{\link[xts:xts-package]{xts}}}
