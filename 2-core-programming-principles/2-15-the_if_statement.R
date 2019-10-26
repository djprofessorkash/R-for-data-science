# Structure of normal distribution of numbers from [-3, 3]
# -3 ---- -2 ---- -1 ---- 0 ---- 1 ---- 2 ---- 3

# Remove local variable
rm(answer)

# Create normal distribution of numbers from [-3, 3]
x <- rnorm(1)

# Utilize 'if' statement chaining to conditionally interpret output of normal sampling
if (x > 1) {
    answer <- "Greater than 1"
} else if (x >= -1) {
    answer <- "Between -1 and 1"
} else {
    answer <- "Less than -1"
}