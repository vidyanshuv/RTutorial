summary <- readLines("stringoperation.txt")

# Reading number of characters in string 
nchar(summary[1])

# Upper/Lower case conversion
toupper(summary[1])
tolower(summary[1])

# Replacing substring
chartr(" ", ".", summary[1])

# Splitting a string
char_list <- strsplit(summary[1], " ")
word_list <- unlist(char_list)

# Sorting word_list variable
sorted_word <- sort(word_list)

# Concatenating the word_list
paste(sorted_word, collapse = " ")

# Extracting a sub-string
subs = substr(summary[1], start = 4, stop = 30)

# Removing Whitespace from a string
trimws(subs)

# Slicing last 8 characters
library(stringr)
str8 = str_sub(summary[1], start = -8, -1)
