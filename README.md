## RcppXts: Rcpp interface to xts

[![CI](https://github.com/eddelbuettel/rcppxts/workflows/ci/badge.svg)](https://github.com/eddelbuettel/rcppxts/actions?query=workflow%3Aci)
[![License](https://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](https://www.gnu.org/licenses/gpl-2.0.html) 
[![CRAN](https://www.r-pkg.org/badges/version/RcppXts)](https://cran.r-project.org/package=RcppXts) 
[![Downloads](https://cranlogs.r-pkg.org/badges/RcppXts?color=brightgreen)](https://www.r-pkg.org:443/pkg/RcppXts)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/rcppxts)](https://github.com/eddelbuettel/rcppxts)

### About

This package accesses the exported C-level functions of the
[xts](https://cran.r-project.org/package=xts) package. By using
[Rcpp](https://www.rcpp.org/), it permits creation of
[xts](https://cran.r-project.org/package=xts) objects directly at the C++
level, and via access to the [xts](https://cran.r-project.org/package=xts)
core functions also make some of these core operations available from their C
API level.

### Status

The package is still mostly a proof-of-concept and illustration---but builds
and works reliably, and has been on [CRAN](https://cran.r-project.org) for
some time.

### Author

Dirk Eddelbuettel

### License

GPL (>= 2)
