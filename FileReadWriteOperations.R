# Reading CSV files & performing basic operations on the data
csv_data <- read.csv("testData.csv")
csv_data$User
csv_data$Country[4] <- "Korea"
csv_data[1, c("User", "Email")]


# Reading Excel file & performing basic operations on the data. 
#install.packages("readxl")
library(readxl)
xl_data <- read_excel("testData.xlsx")
xl_data$User
xl_data$Country[4] <- "Korea"
xl_data[1, c("User", "Email")]

# Accessing built-in data sets
data() # Returns a list of all built-in data sets
co2_data = help(co2) # Returns a documentation of the data set

# Reading text files
text <- readLines("stringoperation.txt") # Reads each text line (ending with a line break) in a text file and returns a character vector.
text[1]
toupper(text[1])
length(text) # Returns the total line numbers
nchar(text) # Returns count of characters in each line
file.size("stringoperation.txt") # returns size in bytes
# Reading text file word by word
test_word <- scan("stringoperation.txt", "") # Created a vector of all the words in the file


# ______________ Writing to Files __________________
# --------------------------------------------------

# Writing to text file
m <- matrix(c(1,2,3,4,5,6), 2, 3) # creates a matrix
write(m, file="matrix.txt", ncolumns = 3, sep = " ") # Writes to existing file or created one if not there already

# Writing to CSV file
write.csv(csv_data, file = "TDataCopy.csv", row.names = F)
# Adding column names require you to use write.table() function
write.table(csv_data, file = "TDataCopyTable.csv", row.names = F, col.names = F, sep = ",")


# Writing to excel files 
install.packages("xlsx")
library(xlsx) # Needs java (jre) to be installed & have JAVA_HOME variable in path
write.xlsx(csv_data, file = "TDataCopy.xlsx", sheetName = "Sheet1", col.names = T, row.names = F)


# Saving R objects in .RData files
lis = c("var1", "var2", "var3")
save(lis, file = "vars.RData", safe = T)
