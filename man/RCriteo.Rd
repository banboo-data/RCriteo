\name{RCriteo}
\alias{RCriteo}
\title{Loading Criteo Data Into R}
\description{
  The aim of RCriteo is loading Criteo online display advertising campaign data into R.
  The package provides an authentication process \code{\link{doCriteoAuth}} for R with the Criteo API.
  Moreover, the package features an interface to query campaign data from the Criteo API with \code{\link{scedCriteoReport}}.
  The data can be downloaded with \code{\link{criteoData}}.
  \code{\link{getCriteoDownloadURL}} generates a download link and \code{\link{getCriteoData}} will download the data and transform it into a R data frame.  
  With \code{\link{getCriteoAccount}} and \code{\link{getCriteoCampaigns}} you can receive Account and Campaign Information.
}

\author{
Johannes Burkhardt <johannes.burkhardt@gmail.com>\cr
\url{https://github.com/jburkhardt/RCriteo}
}

\keyword{ ~Criteo }
\keyword{ ~Criteo API }