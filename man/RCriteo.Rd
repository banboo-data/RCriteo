\name{RCriteo}
\alias{RCriteo}
\title{Loading Criteo Data into R}
\description{
  Aims at loading \href{http://www.criteo.com/}{Criteo online display advertising campaign data} into R. Criteo is an online advertising service that enables advertisers to display advertising copy to web users.
  The package provides an authentication process \code{\link{doCriteoAuth}} for R with the \href{http://kb.criteo.com/advertising/content/5/27/en/api.html}{Criteo API}.
  Moreover, the package features an interface to query campaign data from the Criteo API with \code{\link{scedCriteoReport}}.
  The data can be downloaded with \code{\link{criteoData}}.
  \code{\link{getCriteoDownloadURL}} generates a download link and \code{\link{getCriteoData}} will download the data and transform it into a R data frame.  
  With \code{\link{getCriteoAccount}} and \code{\link{getCriteoCampaigns}} you can receive Account and Campaign Information.
}
\examples{
\dontrun{
Authentication:
authToken <- doCriteoAuth(user = "userName",
                            password = "**********",
                            company = "companyName",
                            app = "appName",
                            version = "3.6")
Retrieve Campaign IDs:
getCriteoCampaigns(authToken = authToken,
                      appToken = '*************')
Create Statement:
jobID <- scedCriteoReport(authToken = authToken,
                      appToken = '*************',
                      campaigns = c("12345", "23345", "98765", "45639"),
                      metrics = c("clicks", "impressions", "cost", "sales"),
                      start = "2015-09-01",
                      end = "2015-09-06")
Download Data:
data <- criteoData(authToken = authToken,
                    appToken = '*************',
                    jobID = jobID)
}
}

\author{
Johannes Burkhardt <johannes.burkhardt@gmail.com>\cr
\url{https://github.com/jburkhardt/RCriteo}
}

\keyword{ ~Criteo }
\keyword{ ~Criteo API }
\keyword{ ~RCriteo }