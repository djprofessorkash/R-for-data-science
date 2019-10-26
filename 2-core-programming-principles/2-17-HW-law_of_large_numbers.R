# NAME: Module 2.17: HOMEWORK: Law of Large Numbers.

# NOTE: The Law of Large Numbers states that for a given experiment, 
#       our sampling average(s) will converge to our theoretical average(s)
#       if our number of samples tends towards infinity (becomes large).

# NOTE: The normal distribution is a bell-curve-shaped data distribution
#       that is symmetrical across its mean and has several major unique properties:
#           - The mean, median, and mode are all the same value.
#           - 68% of the data falls between one standard deviation of the mean.
#           - 95% of the data falls between two standard deviations of the mean.
#           - 99.7% of the data falls between three standard deviations of the mean.

# TASK: Test the Law of Large Numbers for `N` random normally distributed numbers with
#       mean = 0, stddev = 1. Create an R script that will count how many of these numbers
#       fall between -1 and 1 and divide by the total quantity of `N`.
#           - We know that E(X) = 68.2%.
#           - Verify that Mean(X_N) -> E(X) as we rerun the script while increasing `N`.

N = 1000000           # Alter this number to test growing sampling sizes
E = 68.2            # Expected proportion of samples within one standard deviation of the mean
sample_hits = 0     # Number of samples that fall within one standard deviation of the mean

# Utilize 'for' loop to conduct logical analysis of sampling average calculations
for (iterator in 1:N) {
    # Get sample from given normal distribution
    sample <- rnorm(1, mean=0, sd=1)
    
    # Check if sample falls between given range [-1, 1]
    if ((sample <= 1) & (sample >= -1)) {
        sample_hits <- sample_hits + 1
    }
}

# Calculate proportion of samples that fall within one standard deviation of the mean
sampling_proportion <- (sample_hits / N) * 100

# Calculate percentage error between theoretical and actual sampling proportions
sampling_error <- abs(E - sampling_proportion)

# SOLUTION: The table below holds tested sampling proportion estimates for each corresponding
#           sampling size value passed to `N`.
#               - `N` = 10:         `sampling_proportion` = 90%     `sampling_error` = 21.8%
#               - `N` = 100:        `sampling_proportion` = 63%     `sampling_error` = 5.2%
#               - `N` = 1000:       `sampling_proportion` = 68.8%   `sampling_error` = 0.600%
#               - `N` = 10000:      `sampling_proportion` = 67.8%   `sampling_error` = 0.380%
#               - `N` = 100000:     `sampling_proportion` = 68.4%   `sampling_error` = 0.221%
#               - `N` = 1000000:    `sampling_proportion` = 68.3%   `sampling_error` = 0.094%
