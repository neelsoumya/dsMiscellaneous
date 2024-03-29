###############################################
# code to install all DataSHIELD R packages
# 
###############################################

install.packages('devtools')
library(devtools)
devtools::install_github('https://github.com/datashield/dsBaseClient')

devtools::install_github('https://github.com/datashield/dsBase')
library(dsBase)

devtools::install_github('https://github.com/datashield/opal')
library(opal)

devtools::install_github('https://github.com/datashield/dsBaseClient', force = TRUE)
library(dsBaseClient)

devtools::install_github('https://github.com/datashield/dsStatsClient')#, force = TRUE)

library(dsStatsClient)

devtools::install_github('https://github.com/datashield/dsGraphicsClient')#, force = TRUE)

library(dsGraphicsClient)

devtools::install_github('https://github.com/datashield/dsModellingClient')#, force = TRUE)

library(dsModellingClient)

devtools::install_github('https://github.com/datashield/DSOpal')#, force = TRUE)


install.packages('shiny')
install.packages('rmarkdown')
install.packages('metafor')
install.packages('shiny')
install.packages('shinyjs')
install.packages('DSOpal')
install.packages('DSI')
