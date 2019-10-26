# Using `while` to finitely loop with counters
counter <- 1
while (counter < 12) {
    print(counter)
    counter <- counter + 1
}

# Using `for` loop to finitely loop with vectors
for (iterator in 1:5) {
    print("Hello R")
}

# Another `for` loop example with vectors
for (iterator in 5:10) {
    print(iterator)
}