# Reading in dataset
my_data <- read.csv(file.choose())

# Instantiating visualization assets
install.packages("ggplot2")
library(ggplot2)

# Producing conditional scatterplot
ggplot(data=my_data[my_data$carat < 2.5,], 
       aes(x=carat, y=price, colour=clarity)) + 
    geom_point(alpha=0.1) + 
    geom_smooth()
