source("../Functions/Circle.R");

test_that("calculateArea returns pi for radius = 1", {
    value <- calculateArea(1)

    expect_that(value, is_a("numeric"))
    expect_that(value, equals(pi))
})

test_that("calculateArea throws error if non-positive number was provided", {
    expect_that(calculateArea(-1), throws_error())
})

test_that("calculateArea throws error if 0 was provided", {
    expect_that(calculateArea(0), throws_error())
})

test_that("calculateArea returns correct area value", {
    test_parameter <- sqrt(1 / pi)
    value <- calculateArea(test_parameter)

    expect_that(value, is_a("numeric"))
    expect_that(value, equals(1))
})