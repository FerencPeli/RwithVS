# import helper file
library(testthat)
source("Functions/Circle.R")

cat("--- Start of script ---")

# calculation
circleRadius <- 10
circleArea <- calculateArea(circleRadius)

# print results
cat("\n The area of the circle is", circleArea)

# run tests with test_that package
cat("\n Starting unit tests: \n")
test_dir("Testing")
