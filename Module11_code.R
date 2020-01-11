install.packages("DBI")
install.packages("RSQLite")

library(DBI)
setwd("C:/my_project")



con <- dbConnect(RSQLite::SQLite(), "./sqlcourse.db")


dbListTables(con)
dbReadTable(con, "salescall")


# Run a query on the database
queryResult <- dbSendQuery(con, "select max(customer_id) from salescall")
dbFetch(queryResult)


