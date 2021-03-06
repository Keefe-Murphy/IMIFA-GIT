% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FullConditionals.R
\name{shift_GA}
\alias{shift_GA}
\title{Moment Matching Parameters of Shifted Gamma Distributions}
\usage{
shift_GA(shape,
         rate,
         shift = 0,
         param = c("rate", "scale"))
}
\arguments{
\item{shape, rate}{Shape and rate parameters a and b, respectively, of a Gamma(a, b) distribution. Both must be strictly positive.}

\item{shift}{Modifier, such that the Gamma distribution has support on (\code{shift}, \eqn{\infty}). Can be positive or negative, though typically negative and small.}

\item{param}{Switch controlling whether the supplied \code{rate} parameter is indeed a rate, or actually a scale parameter. Also governs whether the output is given in terms of rate or scale. Defaults to \code{"rate"}.}
}
\value{
A named vector of length 2, containing the modified shape and rate parameters, respectively.
}
\description{
This function takes shape and rate parameters of a Gamma distribution and modifies them to achieve the same expected value and variance when the left extent of the support of the distribution is shifted up or down.
}
\note{
This function is invoked within \code{\link{mcmc_IMIFA}} when \code{discount} is \emph{fixed} at a non-zero value and \code{learn.alpha=TRUE}.
}
\examples{
# Shift a Ga(shape=4, rate=2) distribution to the left by 1;
# achieving the same expected value of 2 and variance of 1.
shift_GA(4, 2, -1)
}
\author{
Keefe Murphy - <\email{keefe.murphy@mu.ie}>
}
\keyword{utility}
