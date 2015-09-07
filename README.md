## Loading Criteo Data into R ##

Aims at loading [Criteo online advertising campaign data](http://www.criteo.com/) into R. Criteo is an online advertising service that enables advertisers to display advertising copy to web users.
The package provides an **authentication process** for R with the [Criteo API](http://kb.criteo.com/advertising/content/5/27/en/api.html).
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

#### Retrieve Campaign IDs: ####

`getCriteoCampaigns` loads campaign information.

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
#### Retrieve Campaign IDs ####
`getCriteoCampaigns(authToken = authToken,
                      appToken = '*************')`
#### Create Statement ####
`jobID <- scedCriteoReport(authToken = authToken,
                      appToken = '*************',
                      campaigns = c("12345", "23345", "98765", "45639"),
                      metrics = c("clicks", "impressions", "cost", "sales"),
                      start = "2015-09-01",
                      end = "2015-09-06")`
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