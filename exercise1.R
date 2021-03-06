### Exercise 1 ###

# Based off examples here: https://plot.ly/r/bubble-charts/

# Libraries
library(plotly)
library(dplyr)

# Randomly sample 1,000 rows from the `diamonds` dataframe
d <- diamonds[sample(nrow(diamonds), 1000), ]

# Create a graph with the following encodings:
# carat: horizontal position, 
# price: vertical position, 
# cut: color 

# Pass your plot to the layout function to add a descriptive title
plot_ly(d, x = carat, y = price, color = cut, mode = "markers") %>% 
   layout(title = "Cut vs. Price")

# Create another graph that compares diamond table to diamond depth, 
# that also encodes information about price
plot_ly(d, x = depth, y = price, mode = "markers", size = price, color = price)
# Pass your plot to the layout function to add a descriptive title



plot_ly(d, x=depth, y=price, z=clarity, color=color, type="scatter3d", mode="markers")


