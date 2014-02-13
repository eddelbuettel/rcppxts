## RcppXts: Rcpp interface to xts

[![Build Status](https://travis-ci.org/eddelbuettel/rcppxts.png)](https://travis-ci.org/eddelbuettel/rcppxts)

This package accesses the exported C-level functions of the xts package. By
using Rcpp, it permits creation of xts objects directly at the C++ level, and
via the access to the xts core functions also make some of these core
operations available.
