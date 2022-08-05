\name{NEWS}
\title{News for Package \pkg{RcppXts}}
\newcommand{\cpkg}{\href{https://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\section{Changes in version 0.0.5 (2022-08-05)}{
  \itemize{
    \item Depends on \cpkg{xts} 0.9-6 now on CRAN
    \item Exports (and documents) a number of additional functions 
    \item Switch CI use to \href{https://eddelbuettel.github.io/r-ci/}{r-ci}
    and \href{https://eddelbuettel.github.io/r2u/}{r2u}
    \item README.md, DESCRIPTION and NEWS.Rd were updated and expanded
    \item NAMESPACE import of the shared library uses registration
  }
}

\section{Changes in version 0.0.4 (2013-01-18)}{
  \itemize{
    \item Depends on \cpkg{xts} 0.9-2 now on CRAN
  }
}

\section{Changes in version 0.0.3 (2013-01-16)}{
  \itemize{
    \item Depends on (unreleased) \cpkg{xts} 0.9-1.2
    \item This version uses the new \code{xtsAPI.h} we committed to
    \code{xts} itself, and which uses new function names \code{xts*} all
    using prefixed with \code{xts} for consistency
    \item R functions and manual page renamed accordingly
  }
}

\section{Changes in version 0.0.2 (2013-01-15)}{
  \itemize{
    \item Depends on (unreleased) \cpkg{xts} 0.9-1.1
    \item New demo functions for coredata, merge, lag
    \item Simple test function
  }
}

\section{Changes in version 0.0.1 (2013-01-12)}{
  \itemize{
    \item Initial version
  } 
}
