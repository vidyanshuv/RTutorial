library(tidyverse)

# Load the mpg data set
data('mpg')
mpgData = mpg

# Plot 1: Displacement VS Mileage
p1 = ggplot(data = mpgData, aes(x = displ, y = hwy)) +  geom_point()

# Adding Labels to Plot 1
p1 = p1 + labs(x = "Displacement", y = "Mileage", title = "Displacement VS Mileage")

# _____________Mapping aesthetics to variables_____________

# 1. Color
p2 = ggplot(data = mpgData) + geom_point(mapping = aes(x = displ, y = hwy, color = class)) + 
  labs(x = "Displacement", y = "Mileage", title = "Displacement vs Mileage")

# 2. Size
p3 = ggplot(data = mpgData) + geom_point(mapping = aes(x = displ, y = hwy, size = class)) + 
  labs(x = "Displacement", y = "Mileage", title = "Displacement vs Mileage")

# 3. Shapes
p4 = ggplot(data = mpgData) + geom_point(mapping = aes(x = displ, y = hwy, shape = class)) + 
  labs(x = "Displacement", y = "Mileage", title = "Displacement vs Mileage")

# 4. Transparency
p5 = ggplot(data = mpgData) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class)) + 
  labs(x = "Displacement", y = "Mileage", title = "Displacement vs Mileage")

# Setting Aesthetics manually
p6 = ggplot(mpgData) + geom_point(aes(x = displ, y = hwy), color = 'blue', shape = 3, size = 2)

# _____________ Facets ________________
# Facets are used for creating subplots when the working/active dataset is very big

# Plot mileage w.r.t. each class individually
p7 = ggplot(mpgData) + geom_point(aes(x = displ, y = hwy)) + facet_wrap(~class, nrow = 2)

# Plot mileage w.r.t drive train and number of cylinders
p8 = ggplot(mpgData) + geom_point(aes(x = displ, y = hwy)) + facet_grid(drv ~ cyl)
# P8 shows various subplots. Each corresponds to a particular combination of the cylinder and drive type. 
# For example, the first subplot on the top left represents the ‘hwy’
# vs ‘displ’ for the cars with “4-wheel drive” and four cylinders. The next one to the right
# represents the graph with 4-wheel drive” and 5 cylinders, and so on.

# Facet plot with filtering
# Investigate the number of levels in the cyl feature
factor(mpgData$cyl)# How many cars of each cyl type are there?
mpgData %>% count(cyl)

mpgData.new = mpgData %>% filter(cyl %in% c(5, 6, 8 ))
p9 = ggplot(data = mpgData.new) + geom_point(mapping = aes(x = displ, y = hwy, color = factor(cyl)))
 
