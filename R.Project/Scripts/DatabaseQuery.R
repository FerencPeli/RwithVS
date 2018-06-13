library(RODBC)

# connection string
cat("DB connection string:", settings$dbConnection)

# open db connection
channel <- odbcDriverConnect(settings$dbConnection)

query <- "SELECT * from dbo.Fruit"

# perform sql query
dbResponse <- sqlQuery(channel, query)

# calculate average of price column
averageFruitPrice <- mean(dbResponse$Price)

cat("\n", averageFruitPrice)

# close DB connection
odbcClose(channel)

# response
# Id  Name            Price
# 1   Apple           23.20
# 2   Banana          25.00
# 3   Kiwi            18.00
# 4   Pineapple       53.00
# 5   Strawberry      40.00


