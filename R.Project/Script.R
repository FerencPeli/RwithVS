# import helper file
source("Functions/Circle.R")

cat("Start of script")

# calculations
circleRadius <- 10
circleArea <- calculateArea(circleRadius)
circleCircumference <- calculateCircumference(circleRadius)

# print results
cat("\n The area of the circle is", circleArea)
cat("\n The circumference of the circle is", circleCircumference)