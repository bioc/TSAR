% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/averageTSA.R
\name{TSA_average}
\alias{TSA_average}
\title{Average TSA Curves}
\usage{
TSA_average(
  tsa_data,
  y = "Fluorescence",
  digits = 1,
  avg_smooth = TRUE,
  sd_smooth = TRUE
)
}
\arguments{
\item{tsa_data}{a data frame that is merged and generated by
TSAR::merge_TSA(). If \code{y = 'RFU'}, tsa_data must also be
generated by TSAR::normalize_fluorescence. The Temperature column will be
rounded and the average & sd of each rounded temperature is calculated.}

\item{y}{character string; c('Fluorescence', 'RFU').
When \code{y = 'Fluorescence'}, the original Fluorescence data from
TSAR::read_raw_data() is averaged. When \code{y = 'RFU'}, the average is
calculated by the rescaled fluorescence.}

\item{digits}{an integer; \code{digits = 1} by default.
The number of decimal places to round temperature to for averaging.}

\item{avg_smooth, sd_smooth}{logical; TRUE by default. Decides if the
average (avg_smooth) or standard deviation (sd_smooth) will be smoothened
by regression via mgcv::gam()}
}
\value{
a data frame of each temperature measured with the average, sd, and
   n(# of averaged values) calculated. Depending on avg_smooth and sd_smooth,
   the smoothened lines for the maximum and mimimum sd and the average will
   also be returned.
}
\description{
This function will take either Fluorescence or Normalized Fluorescence
    curves from the submitted data frame and find the average (mean) and
    standard deviation (sd) for each temperature measured in the TSA curve.
    Mean and sd are smoothened by default to generate cleaner curves.
    The function \code{\link[mgcv]{gam}} from the mgcv package is used for
    regression to smoothen lines. Smoothing can be turned off and the true
    average for each point can be given, however, plots will look messier.
    The qPCR machine may return temperatures with many decimal places,
    and TSAR only merges identical values, therefore rounding is necessary.
    Data is rounded to one decimal place to improve regression smoothing.
    \cr \cr
    \strong{Note:} All submitted data is averaged, regardless of condition or
    well ID.
    If you wish to average by condition, you will need to sort the data frame
    and run this function on subsets.
}
\examples{
data("example_tsar_data")
TSA_average(example_tsar_data,
    y = "Fluorescence", digits = 1,
    avg_smooth = TRUE, sd_smooth = TRUE
)

}
\seealso{
\code{\link{merge_TSA}} and \code{\link{merge_TSA}} for
   preparing data.

Other TSAR Formatting: 
\code{\link{TSA_Tms}()},
\code{\link{Tm_difference}()},
\code{\link{merge_TSA}()},
\code{\link{merge_norm}()},
\code{\link{normalize_fluorescence}()},
\code{\link{rescale}()}
}
\concept{TSAR Formatting}
