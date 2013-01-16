// -*- mode: C++; c-indent-level: 4; c-basic-offset: 4; indent-tabs-mode: nil; -*-
//
// xtsMod.cpp: Rcpp R/C++ modules interface to xts
//
// Copyright (C) 2012  Dirk Eddelbuettel
//
// This file is part of RcppXts.
//
// RcppXts is free software: you can redistribute it and/or modify it
// under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 2 of the License, or
// (at your option) any later version.
//
// RcppXts is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with RcppXts.  If not, see <http://www.gnu.org/licenses/>.

#include <Rcpp.h>               // need to include the main Rcpp header file only

// what is in xts.h does not matter; what matters is what has been 'registered' 
// at the end of init.c in the xts sources

extern "C" {
    #define class xts_class
    #include <xts.h>    	// xts header
    #include <xts_stubs.c>      // stubs + automatic registration -- no linking
    #undef class

    // We need R_GetCCallable() for the three (of six total in init.c)
    // that did not already have such a R_GetCCallable() in
    // xts_stubs.c -- currently xts_stub.c has: isXts, do_is_ordered, naCheck


}

// wrapped so that we get a bool instead of int
bool wrapIsXts(SEXP x)           { return isXts(x);      }
bool wrapNaCheck(SEXP x, SEXP y) { return naCheck(x, y); }

RCPP_MODULE(xts) {

    using namespace Rcpp;

    function("isOrdered_",
             &do_is_ordered,
             List::create(Named("x"),
                          Named("increasing") = true, 
                          Named("strictly") = true),
             "Tests whether object is (strictly) (increasing) ordered");

    function("isXts_",
             &wrapIsXts,   // could also wrap xts function here via &isXts
             List::create(Named("x")),
             "Tests whether object is of xts type");

    function("tryXts_",
             &tryXts,
             List::create(Named("x")),
             "Calls try.xts()");

    function("rbindXts_",
             &do_rbind_xts,
             List::create(Named("x"), Named("y"), Named("dup")),
             "Combine two xts objects row-wise");

    function("naCheck_",
             &wrapNaCheck,
             List::create(Named("x"),
                          Named("check") = true),
             "Tests whether object contains non-leading NA values"); 

    function("coredata_",
             &coredata_xts,         // see xts's src/init.c, and above
             List::create(Named("x")),
             "Extract the coredata from xts object");

    function("lagXts_",
             &lagXts,
             List::create(Named("x"), Named("k"), Named("pad")),
             "Extract the coredata from xts object");

}
