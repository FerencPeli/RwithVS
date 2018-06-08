calculateArea <- function(radius) {
    if (!radius > 0) {
        stop("Radius should be higher than zero.")
    }

    return(`^`(radius, 2) * pi)
}
