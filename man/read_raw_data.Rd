% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readRawData.R
\name{read_raw_data}
\alias{read_raw_data}
\title{Read TSA Raw Data}
\usage{
read_raw_data(path, manual_file = NA, type = "fluorescence")
}
\arguments{
\item{path}{a character string; the path or the name of the file which the
'RawData' data are to be read from. Either a .txt or .csv file.
The path must contain the term \emph{RawData} as the TSA software
automatically assigns this when exporting data.}

\item{manual_file}{NA by default. User can specify .eds for merging if needed
for Well IDs with a character string.}

\item{type}{either c("boltzmann", "derivative", "fluorescence");
\code{type = "fluorescence")} by default. Determines what data track to
load. When \code{type = "fluorescence")}, the arbitrary fluorescence
of the TSA dye is  loaded; this is the primary data. Alternately,
derivatives van be loaded:  Loads data as boltzman estimated tracks when
\code{type = "boltzmann")}; loads the 2nd derivative of emissions when
\code{type = "derivative")}.}
}
\value{
A data frame of TSA raw data.
}
\description{
Open TSA Raw Data files. This function is used to load data output from
    the thermal shift software Raw Data tab.
    Can be either .txt or .csv file with a path / file name
    including the string "RawData" due to its automatic naming from
    the software.
    The values assigned to wells within the TSA software are
    automatically extracted from the loaded file; values must be assigned
    within the TSA software for the automated workflow
    (See IDs Section Below).
}
\section{IDs}{

    The TSAR package relies on matching conditions and file names for each
    well and for each set of conditions between multiple files output by
    the TSA software. Conditions are
    assigned to individual wells within the TSA software; these assigned
    values are detected by
    \code{\link{read_analysis}} and
    \code{\link{read_raw_data}} then are converted into IDs.
    Ensure your labeling of values within the TSA software is consistent
    so that similar values can be merged - typos or varying terms will be
    treated as distinct values within TSAR unless the values
    are manually specified by the user.
    Automatically generated well IDs within a TSA file can be found using the
    \code{\link{well_IDs}} function; condition IDs can be found using the
    \code{\link{condition_IDs}} function. \cr\cr


    \strong{Condition IDs} are generated only in the
    \code{\link{read_analysis}}, see that function's documentation for
    more details. Condition IDs are assigned to raw data in the
    \code{\link{merge_TSA}} function.
    \cr\cr

    \strong{Well IDs} are similar to Condition IDs, as they are
    generated from columns in TSA output. Well IDs are used to match
    the analysis and raw data files for the same experiment, as both files
    contain unique, useful information for each well.
    The well ID includes the .eds file name saved from the
    PCR machine to match equivalent wells between files of the same
    experiment. Each well on all plates should have a unique well ID.
    If you wish to change or specify the file name used for the well ID,
    a new name can be manually assigned with the "manual_file" argument.
    \cr\cr
}

\examples{
path <- "~/Desktop/raw_data"
# note: example does not contain example data to run
# read_raw_data(path)

}
\seealso{
\code{\link{read_analysis}} for loading accompanying data.
    \code{\link{merge_TSA}} for joining Analysis Results and Raw Data files
    from the TSA software.

Other Read TSA Data: 
\code{\link{read_analysis}()}
}
\concept{Read TSA Data}
