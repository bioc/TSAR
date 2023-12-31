% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rescaleTSA.R
\name{rescale}
\alias{rescale}
\title{Rescale values between minimum and maximum.}
\usage{
rescale(x)
}
\arguments{
\item{x}{a numeric vector to be rescaled}
}
\value{
A numeric vector of rescaled values.
}
\description{
For a vector of numeric values, the minimum and maximum values are determined
    and each value of the vector is rescaled between 0 and 1.
    Values near 0 are close to the minimum, values near 1 are close to the
    max. This function is utilized by other TSAR functions.
}
\examples{
x <- c(0, 1, 3)
rescale(x)

}
\seealso{
Other TSAR Formatting: 
\code{\link{TSA_Tms}()},
\code{\link{TSA_average}()},
\code{\link{Tm_difference}()},
\code{\link{merge_TSA}()},
\code{\link{merge_norm}()},
\code{\link{normalize_fluorescence}()}
}
\concept{TSAR Formatting}
