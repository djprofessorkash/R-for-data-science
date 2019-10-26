# Create vector of random numbers
x <- rnorm(5)
x

# Iterate across vector and print each element
for (item in x) {
    print(item)
}

# Iteratively print each element using manual index-based selection
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# Iterate across vector using index-based selection by looping (conventional)
for (iterator in 1:5) {
    print(x[iterator])
}

# Create normally distributed vectors
# NOTE: Increase `N` to showcase the difference between vectorized and devectorized arithmetics
N <- 1000
a <- rnorm(N)
b <- rnorm(N)

# Vectorized approach to vector arithmetics
# NOTE: Vectorized arithmetics are not only syntacticly better but also computationally faster
c <- a * b

# Devectorized approach to vector arithmetics
d <- rep(NA, N)
for (index in 1:N) {
    d[index] <- a[index] * b[index]
}
