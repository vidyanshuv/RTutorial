# _________Vectors & Factors_______
# vector is a 1D array of objects to store your data, no restriction of number of data or type of data.
vecex = c(81, 125)
vecex


print(vecex/10) # Division will be performed on all data of a vector

a = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
b = c(1:9) # Can be created using Range
c = c(9:1) # can be in reverse order as well
a
b
c

# Adding values to Vector
a = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
a <- c(a, 10) # Adding 1 element
a <- c(a, 11, 12) # Adding multiple elements
a <- c(a, 13:15) # Adding a range of elements
a

# Logical vector
a = c(10, 9.9, 6.5, 4, 9.1, 1.7)
b = a > 7.5
b # b is the logical vector since it only have logical data e.g. TRUE and FALSE


# _____________Factors_____________
# Factors are variables that can hold a limited number of unique values & these values
# are often referred to as categorical variables. The other extreme would be a continuous
# variable that can hold infinite number of values.

exvector = c("Comedy", "Comedy", "Sci-Fi", "Animation", "Animation", "Crime")
exfactor <- factor(exvector)
exfactor # Returns only the unique categories/ values
summary(exvector) # Only provides basic structure & contents of the Vector
summary(exfactor) # When applied on a Factor it returns the number of occurrences of each categories in sorted manner.

# Types of Factors:
# 1. Nominal: have no implied order, above factors were Nominal
# 2. Ordinal: Have ordering

# ORDERED FACTORS
movielength_vector <- c("Short", "Long", "Medium", "Very Long", "Very Short", "Very Long", "Medium")
movielength_factor <- factor(movielength_vector, ordered = TRUE,levels = c("Very Short", "Short", 
                                                                            "Medium", "Long", 
                                                                            "Very Long"))
movielength_factor

# _____________Vector Operations______________
# ____________________________________________
# Name the vector elements
# Return Length
# Sort
# Find Min & Max
# Return Average 
# Vector Summary
# Index the values in a Vector
# Identify missing values in a vector
# Perform Arithmetical operations

# names() function: Name vector element
year <- c(1995, 1998, 1987, 2003)
names(year) <- c("Zoomer", "Ghoomer", "Blobber", "Striker")
year['Ghoomer']
year["Striker"]
year["Zoomer"]
year["Blobber"]

names(year) # retrieve the names of the vector using names()

# length() function : Length of a vector
length(year)

# head() & tail() functions
year <- c(1995, 1998, 1987, 2003)
head(year)
head(year, 2)
tail(year)
tail(year, n =3)


# sort() function : Sort a vector
year_sorted <- sort(year)
year_sorted

# min() & max() function:
min(year)
max(year)

# mean() function : Return Average
mean(year)

# summary() function:
cost_year2004 <- c(9.6, 33.29, 12.6, 11.7)
summary(cost_year2004) # Returns Minimum value, 1st Quartile, Median, 3rd Quartile & Maximum value

# Index value of a vector
cost_year2004[2] # retrieve value at 2nd index
cost_year2004[c(3, 1)] # retrieves value at 3rd & 1st index
cost_year2004[1:4] # Works like slicing
cost_year2004[1:9] # Will return "NA" for index which has no value
# To retrieve a vector without an item, you can use negative indexing. For example:
cost_year2004[-4] # Removes the value from the negative index e.g. 11.7 will be removed here but not permanently 
cost_year2004

# Conditional Index
cost_year2004 <- c(9.6, 33.29, 12.6, 11.7)
cost_year2004[cost_year2004>10] # Will only return the elements that are greater than 10

# Identifying missing values: Use of NA in vector
age <- c(12, 16, 18, NA, 22, NA, 8)
age
is.na(age)


# Vector Arithmetic operations
no_decimal = cost_year2004 * 100
no_decimal

emenet_multiplication <- no_decimal * c(2, 4, 0, 1)
emenet_multiplication

