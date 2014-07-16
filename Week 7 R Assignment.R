# read in sqlite db into R
library("RSQLite")
drv <- dbDriver("SQLite")
con <- dbConnect(drv, "C:/DataSqlite/simplecharter.sqlite")

dbListTables(con)
dbListFields(con, "allcharters")

#export Boston to SQlite database
library ("MASS")
data(Boston)

drv    <- dbDriver("SQLite")
createdb <- dbConnect(drv,"MASS.sqlite")
dbWriteTable(createdb,"Boston",df)

dbListTables(createdb)