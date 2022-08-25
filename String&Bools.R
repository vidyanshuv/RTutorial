# __________String & Boolean Datatype ____________

# Single line string
a <- "Lorem Ipsum"
a

# Multi line string
b = "Lorem Ipsum
next line
next line
next line
end line"
b # printing multi line string automatically introduces \n 
cat(b)# Prints multi line string as it is

c <- nchar(a) # nchar() returns the length of string
c

grepl("Ipsum", b) # grepl() searchs for a substring in a string
grepl("ipsum", b) # similar to "xxx" in var in Python

d <- "Lorem Gayem"
e <- paste(a, d) # Concatenates the given strings 
e

# __________ESCAPE CHARACTER___________
# Use of escape character \ back slash to use double quotes inside double quotes
str = "We are the original \"Vikings\"" 
str
# \\ Backslash
# \n New Line
# \r Carriage Return
# \t Tab
# \b Backspace 

# _______Boolean/ Logical____________

a <- TRUE
b <- FALSE
a
b

