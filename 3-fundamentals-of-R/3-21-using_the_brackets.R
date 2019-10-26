# Create vector using the combination function
x <- c(1, 123, 534, 13, 4)

# Create vector using the sequencing function
y <- seq(201, 250, 11)

# Create vector using the replication function
z <- rep("Hi!", 4)

# Create basic vector of characters for vector accessibility
w <- c("a", "b", "c", "d", "e")

# Access elements of character vector using indexing
w[1]        # Access the first item
w[3]        # Access the third item
w[-1]       # Access all items except the first item
w[-3]       # Access all items except the third item
w[2:4]      # Access the middle three items

# Access elements of character vector using combination-based selection
w[c(1, 3, 5)]
w[c(-2, -4)]

# Access elements of character vector using index-based slicing
w[1:2]
w[-3:-5]
