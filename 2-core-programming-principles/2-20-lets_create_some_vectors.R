# Create a basic vector using the `c()` combination function
my_first_vector <- c(3, 45, 56, 732)
my_first_vector

# Check if object is comprised of numbers/numerical types
is.numeric(my_first_vector)     # Should return TRUE

# Check if object is comprised of integers or doubles
# NOTE: By default, R stores integers automatically as a double. 
is.integer(my_first_vector)     # Should return FALSE
is.double(my_first_vector)      # Should return TRUE

# Create a basic vector of forced integer types
V2 <- c(3L, 12L, 243L, 0L)

# Check if object is comprised of numerical, integer, and/or double types
is.numeric(V2)      # Should return TRUE
is.integer(V2)      # Should return TRUE
is.double(V2)       # Should return FALSE

# Create a vector of character types with numerical-to-character implicit conversion
V3 <- c("a", "B23", "Hello", 7)
V3

# Check if object is comprised of character and/or numerical types
is.character(V3)
is.numeric(V3)

# Create a sequence object
seq(1, 15)

# NOTE: Sequence objects are the same structure and type as the colon notation
1:15

# Create a sequence object with custom step size and assign to variable `z`
z <- seq(1, 15, 2)
z

# Create a replicate object of numbers and assign to variable `d`
# NOTE: Replicate with repeat the first argument as many times as denoted by the second argument
d <- rep(3, 15)
d

# Create a replicate object of characters and assign to variable `w`
w <- rep("a", 5)
w

# Create a replicate object from a vector of numbers (doubles)
x <- c(80, 20)
y <- rep(x, 10)
y

