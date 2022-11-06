library(tidyverse)
data('mtcars')
carData =mtcars

# Print top 5 values
head(carData)

# Use mutate() to add new columns
carData %>% mutate(cyltype = 'High')
carData %>% mutate(wtton = wt*0.45)
carData %>% mutate(cyltype = ifelse(cyl>6, 'High', 'Low'))

# Create a new data frame with the cyltype and wtton added
carData.new = carData %>% mutate(cyltype = ifelse(cyl >6, 'High', 'Low'), wtton = 0.45*wt)
head(carData.new, 5)

# summarise() function to get mean, median & mode
carData.new %>% summarise(mean(wtton))
carData.new %>% summarise(median(wtton))
carData.new %>% summarise(mode(wtton))

# Return the mean weight (in tons) and mean displacement of the cars
carData.new %>% summarise(mean(wtton), mean(disp))

# group_by() function to group samples according to their features
# group_by(.data, ...., .add = FALSE, .drop = group_by_drop_default(.data))

# group_by() function is used to group samples according to features
# Group cars according to cyltype and calculate mean weight and mean displacement
carData.new %>% group_by(cyltype) %>% summarise(mean(wtton), mean(disp))

# filter() function to retain data with specific condition
carData.new %>% filter(wtton > 2)
carData.new %>% filter(wtton > 2 & cyl > 4)

# select() function to select specific columns
carData.new %>% select(wtton, cyl) # will return wtton & cyl columns
carData.new %>% select(-wtton) # will return everything except wtton function


# ____________________ GGPLOT2 _________________________
# -----------------------------------------------------

# SYNTAX: ggplot (data = NULL, mapping = aes(), ..., environment = parent.frame())

# GGPLOT with AES & GEOM_POINT to plot the graphs
carplot = ggplot(data = carData, aes(x = wt, y = disp)) + geom_point()
# Add labels and title
carplot = carplot + labs(x = 'Weight (lbs)', y = 'Displacement (cu. in.)', title = 'Weight vs. Displacement')


