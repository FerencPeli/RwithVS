library(RODBC)

cat("DB connection string:", settings$dbConnection)

channel <- odbcDriverConnect(settings$dbConnection)

query <- "SELECT * from dbo.Fruit"

dbResponse <- sqlQuery(channel, query)

averageFruitPrice <- mean(dbResponse$Price)

cat("\n", averageFruitPrice)

odbcClose(channel)

# response
# Id  Name            Price
# 1   Apple           23.20
# 2   Banana          25.00
# 3   Kiwi            18.00
# 4   Pineapple       53.00
# 5   Strawberry      40.00


