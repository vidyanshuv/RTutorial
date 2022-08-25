# Let's look at basic arithmetic operations in R
a <- 5 + 9 # Sum
a

b <- 9 - 4 # Difference
b

c <- 5 * 9 # Product
c

d <- 18 / 9 # Division
d

e <- max(4, 5, 6, 7, 1) # Returns the maximum number
e

f <- min(9, 11, 7, 6 ) # Returns the minimum number 
f

g <- sqrt(16) # Returns the square root of the number
g

h <- abs(-4.7) # Returns absolute positive value of a number 
h

i <- ceiling(4.7) # Rounds a number upwards to its nearest integer
i

j <- floor(4.7 ) # Rounds a number downwards to its nearest integer
j

a = 8
b = 4
c <-a ^ b # Exponent: a raised to power b
d <- a %% b # Modulus function: Returns the reminder
e <- a %/% b # Integer Division: Returns the nearest integer after division (same as floor division in Python)
cat("Exponent: ", c, "\n")
cat("Modulus: ", d, "\n")
cat("Integer Division", e, "\n")