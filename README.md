## Loading Criteo Data Into R ##

The aim of **RCriteo** is loading Criteo Campaign data into R.
The package provides an **authentication process** for R with the **Criteo API**.
Moreover, the package features an interface to **query campaign data** from the Criteo API.
The **data** can be **downloaded** and will be transformed into a R data frame.

### Installation ###

The package can be installed directly from this Github repository with:

`require(devtools)`  
`install_github('jburkhardt/RCriteo')`

### Usage ###

#### Authentication: ####

The function `doCriteoAuth` manages the complete authentication process and returns an authentication token.

#### Create Statement: ####

`scedCriteoReport` generates the campaign report statement and schedules the report.
The API returns a job ID, which will later be used to receive the data.

#### Download Data: ####

`criteoData` manages the complete data download process. The function returns the requested data as data frame.

#### Criteo Job Status: ####

`getCriteoJobStatus` monitors if the API processed the report.

#### Download URL: ####

`getCriteoDownloadURL` returns the download Url of the report.

#### Loading Data: ####

`getCriteoData` loads the data into as R data frame.

#### Get Account Information ####

`getCriteoAccount` returns the account information.

#### Get Campaign Information ####

`getCriteoCampaigns` returns list of Campaigns and additional information.

### Example ###

#### Authentication ####
`library(RCriteo)`  
`authToken <- doCriteoAuth(user = "userName",
                            password = "**********",
                            company = "companyName",
                            app = "appName",
                            version = "3.6")`

#### Create Statement ####
`jobID <- scedCriteoReport(authToken = authToken,
                      appToken = '*************',
                      campaigns = c("12345", "23345", "98765", "45639"),
                      metrics = c("clicks", "impressions", "cost", "sales"),
                      start = "2014-01-01",
                      end = "2014-01-31")`
#### Download Data ####
`data <- criteoData(authToken = authToken,
                    appToken = '*************',
                    jobID = jobID)`
#### Get Job Status ####
`jobStatus <- getCriteoJobStatus(authToken = authToken,
                            appToken = '************',
                            jobID = jobID)`
                            
#### Get Download URL ####
`URL <- getCriteoDownloadURL(authToken = authToken,
                              appToken = '************',
                              jobID = jobID)`
                              
#### Load Data ####
`data <- getCriteoData(URL = URL,
                        jobID = jobID)`