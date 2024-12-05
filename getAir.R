library(httr)
library(jsonlite)
library(rvest)
library(dplyr)
library(DBI)
library(RMariaDB)
library(logr)

# skrive i logfil
path=Sys.getenv("HOME")
logfilename=paste0(path,"/log/log_",as.integer(Sys.time()))
log_open(logfilename)
log_print("Starting")

# forbind til databasen
con <- dbConnect(MariaDB(),
                 db="airdb",
                 user="root",
                 password=Sys.getenv("airdbpw")
                 )
dbGetQuery(con,"select now()")

log_close()


