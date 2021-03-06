% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/difft.R
\docType{class}
\name{VT.difft}
\alias{VT.difft}
\title{Difference between twins}
\description{
A reference class to represent difference between twin1 and twin2
}
\details{
Difft are calculated depending on the favorable outcome chosen. It is the 
second level of the outcome. For example, if the outcome is 0 and 1, the 
favorable outcome is 1. Then, \deqn{difft_i = twin1_i - twin2_i if T_i = 1}
\deqn{ difft_i = twin2_i - twin1_i if T_i = 0}.
So \emph{absolute} method is :
\deqn{P(Y = 1 | T = 1) - P(Y = 1 | T =0)}
So \emph{relative} method is :
\deqn{P(Y = 1 | T = 1)/P(Y = 1 | T =0)}
So \emph{absolute} method is :
\deqn{logit(P(Y = 1 | T = 1)) - logit(P(Y = 1 | T =0))}
}
\section{Fields}{

\describe{
\item{\code{vt.object}}{VT.object (refClass) representing data}

\item{\code{twin1}}{vector of \eqn{E(Y|T = real treatment)}}

\item{\code{twin2}}{vector of \eqn{E(Y|T = another treatment)}}

\item{\code{method}}{Method available to compute difft : c("absolute", "relative",
"logit"). Absolute is default value. See details.}

\item{\code{difft}}{vector of difference between twin1 and twin2}
}}

\section{Methods}{

\describe{
\item{\code{computeDifft()}}{Compute difference between twin1 and twin2. See details.}
}}

\seealso{
\code{\link{VT.forest}}, \code{\link{VT.forest.one}},
  \code{\link{VT.forest.double}}
}
