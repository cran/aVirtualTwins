% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forest.wrapper.R
\name{vt.forest}
\alias{vt.forest}
\title{Create forest to compute difft}
\usage{
vt.forest(forest.type = "one", vt.data, interactions = T,
  method = "absolute", model = NULL, model_trt1 = NULL,
  model_trt0 = NULL, ratio = 1, fold = 10, ...)
}
\arguments{
\item{forest.type}{must be a character. "one" to use VT.forest.one class. 
"double" to use VT.forest.double. "fold" to use VT.forest.fold.}

\item{vt.data}{\code{\link{VT.object}}. Can be return of \code{vt.data()} 
function}

\item{interactions}{logical. If running VirtualTwins with treatment's 
interactions, set to TRUE (default value)}

\item{method}{character c("absolute", "relative", "logit"). See 
\code{\link{VT.difft}}.}

\item{model}{allows to give a model you build outside this function. Can be 
randomForest, train or cforest. Is only used with forest.type = "one". If 
NULL, a randomForest model is grown inside the function. NULL is default.}

\item{model_trt1}{see model_trt0 explanation and 
\code{\link{VT.forest.double}} details.}

\item{model_trt0}{works the same as model parameter. Is only used with 
forest.type = "double". If NULL, a randomForest model is grown inside the 
function. NULL is default. See \code{\link{VT.forest.double}} for details.}

\item{ratio}{numeric value that allow sampsize to be a bit controlled.
Default to 1. See \code{\link{VT.forest.fold}}.}

\item{fold}{number of fold you want to construct forest with k-fold method. 
Is only used with forest.type = "fold". Default to 5. See 
\code{\link{VT.forest.fold}}}

\item{...}{randomForest() function parameters. Can be used for any forest.type.}
}
\value{
\code{VT.difft}
}
\description{
\code{vt.forest} is a wrapper of \code{\link{VT.forest.one}}, 
\code{\link{VT.forest.double}} and \code{\link{VT.forest.fold}}. With 
parameter forest.type, any of these class can be used with its own parameter.
}
\examples{

data(sepsis)
vt.o <- vt.data(sepsis, "survival", "THERAPY", T)
# inside model :
vt.f <- vt.forest("one", vt.o)
# ...
# your model :
# library(randomForest)
# rf <- randomForest(y = vt.o$getY(),
#                    x = vt.o$getX(int = T),
#                    mtry = 3,
#                    nodesize = 15)
# vt.f <- vt.forest("one", vt.o, model = rf)
# ...
# Can also use ... parameters
vt.f <- vt.forest("one", vt.o, mtry = 3, nodesize = 15)
# ...
   

}
