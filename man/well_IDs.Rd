% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summaryTSA.R
\name{well_IDs}
\alias{well_IDs}
\title{TSAR Well IDs}
\usage{
well_IDs(tsa_data, n = FALSE)
}
\arguments{
\item{tsa_data}{a data frame that is merged and generated by
TSAR::merge_TSA(), or an unmerged data frame read by
TSAR::read_analysis() or TSAR::read_raw_data().
Data frames require a column named 'well_ID'.}

\item{n}{logical value; \code{n = FALSE} by default. When TRUE, a numeric
value of unique IDs is returned. When FALSE, a character vector of unique
IDs are returned.}
}
\value{
Either a character vector of unique well IDs or a numeric value.
}
\description{
This function is used to extract information of the well IDs from a
    merged TSA data frame. Well IDs are automatically generated
    by the read_analysis and read_raw_data functions in the automated
    workflow. This function returns
    either a character vector of unique IDs present or a numeric value of the
    number of unique IDs.
}
\examples{
data("example_tsar_data")
well_IDs(example_tsar_data)

}
\seealso{
\code{\link{merge_TSA}}, \code{\link{read_raw_data}},
and \code{\link{read_analysis}} for preparing input.

Other TSA Summary Functions: 
\code{\link{TSA_ligands}()},
\code{\link{TSA_proteins}()},
\code{\link{condition_IDs}()}
}
\concept{TSA Summary Functions}
