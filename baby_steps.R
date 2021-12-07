############################################################
# A simple function to connect to a DataSHIELD VM server
# 	and test functions 
# 	(written for both the client and the server)
############################################################

####################
# Load library
####################
#library(ggplot2)
#library(opal)
#library(dsBaseClient)
## update.packages(repos='http://cran.obiba.org') 
#library(opal)
#library(dsBaseClient)
#library(dsStatsClient)
#library(dsGraphicsClient)
#library(dsModellingClient)
require('DSI')
require('DSOpal')
require('dsBaseClient')

#######################
# Get data
#######################
builder <- DSI::newDSLoginBuilder()

builder$append(server = "study1", 
               url = "http://192.168.56.101:8080/", 
               user = "administrator", password = "datashield_test&", 
               table = "SURVIVAL.EXPAND_NO_MISSING1", driver = "OpalDriver")
builder$append(server = "study2", 
               url = "http://192.168.56.101:8080/", 
               user = "administrator", password = "datashield_test&", 
               table = "SURVIVAL.EXPAND_NO_MISSING2", driver = "OpalDriver")
#builder$append(server = "study3", 
#               url = "http://192.168.56.100:8080/", 
#               user = "administrator", password = "datashield_test&", 
#               table = "SURVIVAL.EXPAND_NO_MISSING3", driver = "OpalDriver")

logindata <- builder$build()

##############
# login
##############
# opals <- datashield.login(logins=logindata,assign=TRUE)
# Log onto the remote Opal training servers
connections <- DSI::datashield.login(logins = logindata, assign = TRUE, symbol = "D") 
# source('~/DSI/R/datashield.login.R')
# connections <- datashield.login(logins = logindata, assign = TRUE, symbol = "D")


# make sure that the outcome is numeric 
ds.asNumeric(x.name = "D$cens",
             newobj = "EVENT",
             datasources = connections)

# convert time id variable to a factor 
ds.asFactor(input.var.name = "D$time.id",
            newobj = "TID",
            datasources = connections)

# create in the server-side the log(survtime) variable
ds.log(x = "D$survtime",
       newobj = "log.surv",
       datasources = connections)

# check whcih variables exist
ds.ls()

out_coeff_model <- ds.glmSLMA(formula = EVENT ~ 1 + TID + female * age.60,
                               data = "D",
                               family = "poisson", 
                               offset = "log.surv",
                               weights = NULL,
                               checks = FALSE,
                               maxit = 20,
                               datasources = connections)

data# TODO: get coefficients



# call new function modofy NAMESPACE and DESCRIPTION
# client function in
# https://github.com/neelsoumya/dsBaseClient/blob/absolute_newbie_client/R/ds.retStr.R
# server function in
# https://github.com/neelsoumya/dsBase/blob/absolute_newbie/R/retStrDS.R
source('~/soumya_mrc/dsBaseClient/R/ds.retStr.R')
ds.retStr("thisisastringfromclient")

cat(datashield.errors())
print(datashield.errors())

#ds.ls()

# TESTING
# must be string with no spaces
ds.retStr('shortstring')
ds.retStr('123')
ds.retStr('$')

retval_try = try(  ( ds.retStr('1=1') ) ,
			silent = TRUE
		)

if ( inherits(retval_try, 'error')  )
{
	cat("\n Command failed test \n")
}

retval_try = try (  ( ds.retStr('1+1=2') ),
			silent = TRUE
		)

if ( inherits(retval_try, 'error')  )
{
        cat("\n Command failed test \n")
}

retval_try = try (  ( ds.retStr(' ') ),
			silent = TRUE
		)

if ( inherits(retval_try, 'error')  )
{
        cat("\n Command failed test \n")
}

retval_try = try (  ( ds.retStr('@fg67') ),
			silent = TRUE
		)

if ( inherits(retval_try, 'error')  )
{
        cat("\n Command failed test \n")
}

# disconnect
cat("\n Disconnecting ... \n")
#DSI::datashield.logout(conn=connections)

# clean up
#rm()
#gc()
