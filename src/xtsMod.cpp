// -*- mode: C++; c-indent-level: 4; c-basic-offset: 4; indent-tabs-mode: nil; -*-
//
// xtsMod.cpp: Rcpp R/C++ modules interface to xts
//
// Copyright (C) 2013  Dirk Eddelbuettel
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

#include <xtsAPI.h>    		// xts exported functions

// wrapped so that we get a bool instead of int
bool xtsIsWrap(SEXP x)              { return xtsIs(x);         }
bool xtsNaCheckWrap(SEXP x, SEXP y) { return xtsNaCheck(x, y); }

RCPP_MODULE(xts) {

    using namespace Rcpp;

    function("xtsIs",
             &xtsIsWrap,   // could also wrap xts function here via &isXts
             List::create(Named("x")),
             "Tests whether object is of xts type");

    function("xtsIsOrdered",
             &xtsIsOrdered,
             List::create(Named("x"),
                          Named("increasing") = true, 
                          Named("strictly") = true),
             "Tests whether object is (strictly) (increasing) ordered");

    function("xtsNaCheck",
             &xtsNaCheckWrap,
             List::create(Named("x"),
                          Named("check") = true),
             "Tests whether object contains non-leading NA values"); 


    function("xtsTry",
             &xtsTry,
             List::create(Named("x")),
             "Calls try.xts()");

    function("xtsRbind",
             &xtsRbind,
             List::create(Named("x"), Named("y"), Named("dup")),
             "Combine two xts objects row-wise");

    function("xtsCoredata",
             &xtsCoredata,
             List::create(Named("x")),
             "Extract the coredata from xts object");

    function("xtsLag",
             &xtsLag,
             List::create(Named("x"), Named("k"), Named("pad")),
             "Lags the xts object by 'k' periods padding with 'pad'");

    function("xtsMakeIndexUnique",
             &xtsMakeIndexUnique,
             List::create(Named("x"), Named("eps")),
             "Make the POSIXt index unique by separating by 'eps'");
    
    function("xtsMakeUnique",
             &xtsMakeIndexUnique,
             List::create(Named("x"), Named("eps")),
             "Make the POSIXt index unique by separating by 'eps'");

    function("xtsEndpoints",
             &xtsEndpoints,
             List::create(Named("x"), Named("on"), Named("k"), Named("addlast")),
             "Create a series of end points given a time index");

    function("xtsMerge",
             &xtsMerge,
             List::create(Named("x"), Named("y"), Named("all"), Named("fill"), 
                          Named("retclass"), Named("colnames"), Named("suffixes"), 
                          Named("retside"), Named("check_names"), Named("env"),
                          Named("coerce")),
             "Merge two series");

    function("xtsNaOmit",
             &xtsNaOmit,
             List::create(Named("x")),
             "Omit NA values");

    // -- this requires xts 0.9-7 or later 
    function("xtsNaLocf",
             &xtsNaLocf,
             List::create(Named("x"), Named("fromLast"), Named("maxgap"), Named("limit")),
             "Fill NA values by carrying last observation forward");

}
