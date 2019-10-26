# NOTE: Logical operator can be `TRUE` or `FALSE`

# Check if logical operation is True or False
4 < 5       # Should return `TRUE`
10 > 100    # Should return `FALSE`
4 == 5      # Should return `FALSE`

# NOTE: All types of logical operators:
#       - `==`
#       - `!=`
#       - `<`
#       - `>`
#       - `<=`
#       - `>=`
#       - `!`
#       - `|`
#       - `&`
#       - `isTRUE(var)`

# Assign logical operator to variable `result`
result <- 4 < 5
result

# Check data type of logical variable `result`
typeof(result)

# Assign logical operator utilizing not-operator to variable `result2`
result2 <- !(5 > 1)
result2

# Create logical 'or' statement
result | result2

# Create logical 'and' statement
result & result2

# Use inbuilt `isTRUE()` to verify logical operator
isTRUE(result)
