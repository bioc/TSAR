% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/screen.R
\name{view_model}
\alias{view_model}
\title{View Model}
\usage{
view_model(raw_data)
}
\arguments{
\item{raw_data}{dataset input, not processing needed}
}
\value{
list of two ggplot graphs
}
\description{
Function reviews data by well and output a graph of the fit and a graph of
    derivative. Function called within analyze_norm function.
}
\examples{
data("qPCR_data1")
test <- subset(qPCR_data1, Well.Position == "A01")
test <- normalize(test)
gammodel <- model_gam(test, x = test$Temperature, y = test$Normalized)
test <- model_fit(test, model = gammodel)
view_model(test)

}
\seealso{
Other data_preprocess: 
\code{\link{model_boltzmann}()},
\code{\link{model_fit}()},
\code{\link{model_gam}()},
\code{\link{normalize}()},
\code{\link{remove_raw}()},
\code{\link{run_boltzmann}()},
\code{\link{screen}()},
\code{\link{weed_raw}()}
}
\concept{data_preprocess}
