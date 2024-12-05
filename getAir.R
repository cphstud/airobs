library(httr)
library(jsonlite)
library(rvest)
library(dplyr)
library(DBI)
library(RMariaDB)
library(logr)

# skrive i logfil
path=Sys.getenv("HOME")
log_open(path,file_name = "test.log")
log_print("Starting")

# forbind til databasen
con <- dbConnect(MariaDB(),
                 db="airdb",
                 user="root",
                 password=Sys.getenv("airdbpw")
                 )
dbGetQuery(con,"select now()")

log_close()


