# NOTE: Using the `?` operator directly before calling a function is akin to calling for help:
#       it pulls up relevant documentation for better understanding the corresponding function.

# Relevant functions that we've worked with so far:
#       - rnorm(n, mean, sd)
#       - c(...)
#       - seq(from, to, by, length.out, along.with)
#       - rep(vector, each, times)
#       - print(...)
#       - is.numeric(...)
#       - is.integer(...)
#       - is.double(...)
#       - is.character(...)
#       - is.logical(...)
#       - typeof(...)
#       - sqrt(...)
#       - paste(...)

# Example: Testing keyword flexibility on `seq()` function
x <- c("a", "b", "c")
seq(from=10, to=20, length.out=11)
A <- seq(from=10, to=20, along.with=x)

# Example: Testing keyword flexibility on `rep()` function
rep(x, each=5)
rep(x, times=5)

# Example: Testing vector assignment on `sqrt()` function
B <- sqrt(A)
