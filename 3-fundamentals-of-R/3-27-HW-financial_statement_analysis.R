# NAME: Module 3.27: HOMEWORK: Financial Statement Analysis.

# TASK: The scenario is as follows: you are a data scientist working for a consulting firm.
#       One of your colleagues from the auditing department has asked you to help them assess
#       the financial statement of organization X. You have been supplied with two vectors
#       of data: monthly revenue and monthly expenses for the financial year in question. 
#       Your task is to calculate the following financial metrics:
#           - Profit for each month
#           - Profit after tax for each month (tax rate is 30%)
#           - Profit margin for each month (profit after tax divided by revenue)
#           - Good months (profit after tax is greater than mean for the year)
#           - Bad months (profit after tax is less than mean for the year)
#           - Best month (profit after tax is max for the year)
#           - Worst month (profit after tax is min for the year)

# NOTE: All results need to be represented as vectors. Results for dollar values need to be
#       calculated with $0.01 precision, but need to be presented in units of $1,000 with no
#       decimal points. Results for the profit margin ratio need to be presented in units of %
#       with no decimal points.

# NOTE: Your colleague has warned you that it is okay for tax for any given month to be
#       negative. (In accounting terms, negative tax translates into a deferred tax asset.)

# Recreating datasets for single-source accessibility
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Calculate profit for each month
profit_per_month <- round(revenue - expenses)

# Calculate profit after tax for each month
profit_after_tax_per_month <- round((0.7 * revenue) - expenses)

# Calculate profit margin for each month
profit_margin_per_month <- 100 * round(profit_after_tax_per_month / revenue, 2)

# Calculate mean for the year of profits after taxes
mean_profit_after_tax = round(sum(profit_after_tax_per_month) / length(profit_after_tax_per_month))

# Calculate good/bad months and best/worst months by comparing element-wise after-tax profits
good_months <- c()
bad_months <- c()
best_month <- 0
worst_month <- 0

for (item in profit_after_tax_per_month) {
    # Calculate good and bad months by comparing each profit to average annual profit
    if (item > mean_profit_after_tax) {
        good_months <- c(good_months, item)
    } else if (item < mean_profit_after_tax) {
        bad_months <- c(bad_months, item)
    }
    
    # Calculate best month by saving highest recorded profit 
    if (item > best_month) {
        best_month <- item
    }
    
    # Calculate worst month by saving lowest recorded profit
    if (item < worst_month) {
        worst_month <- item
    }
}
