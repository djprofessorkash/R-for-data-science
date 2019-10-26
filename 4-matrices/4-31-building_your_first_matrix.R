# NOTE: Matrices can be initialized using the function `matrix()`. 
# NOTE: Vectors can be combined into a matrix (table/2D array) row-by-row using the 
#       function `rbind()`. Vectors can also be combined into a matrix column-by-column
#       using the function `cbind()`.
# NOTE: Row names and column names for a matrix can be described using vectors with the
#       functions `colnames()` and `rownames()`. 

# Create dummy vector data
my_data <- 1:20

# Instantiate a matrix repeating our dummy vector data into a 4x5 table
A <- matrix(my_data, nrow = 4, ncol = 5)

# Use multi-indexing to grab single value from table
A[2, 3]     # Should grab value '10'

# Instantiate a matrix similar to `A` but with values transposed
B <- matrix(my_data, 4, 5, byrow=T)

# Use multi-indexing to grab single value from table
B[2, 5]     # Should grab value '10'

# Create four dummy vectors with miscellaneous character and numerical data
r1 <- c("My", "name", "is", "Kash")
r2 <- c("I", "am", "very", "happy")
r3 <- c("What", "a", "wonderful", "day")
r4 <- c(1, 2, 3, 4)

# Use `rbind()` to create matrix from dummy vectors using row-by-row instantiation
C <- rbind(r1, r2, r3, r4)

# Use `cbind()` to create matrix from dummy vectors using column-by-column instantiation
D <- cbind(r1, r2, r3, r4)
