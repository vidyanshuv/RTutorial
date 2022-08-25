# _____________LISTS_____________
# List is a data structure similar to vector but unlike vector it can contain any type of data at the same time.
mylist <- list("Name", 55L, 65.23, c("A", "B"))
mylist

# Accessing element value
mylist[2]
mylist[1:3]

# _______List in Key value format____________
mylist = list(name = "Toy Story",
              year = 1995,
              genre = c("Child", "Animated", "Comedy"))
mylist$name # Accessing list element by it's name/key with $ symbol 
mylist["year"] # Accessing element by passing key in string format

# Appending new elements with name
mylist["Age Group"] <- 5L
mylist$Sequal <- TRUE
mylist

# To delete a value from list use "NULL" value e.g. 
mylist$Sequal <- NULL


# _____________ Arrays___________________
# ---------------------------------------

# An array is a single or multidimensional structure containing data of same type.
vect = c("Ankit", "Aman", "Akash", "Akshit", "Ankur", "Anshu", "Alankrit", "Abhushan", "Akshunn")
my_arr = array(vect, dim = c(4,3))
my_arr
dim(my_arr)

# Accessing array elements 
my_arr[2,2] # returns value at row * column
my_arr[1,] # Fetches entire row of data
my_arr[,1] # Fetches entire column
my_arr[2:3, 2:3] # Fetches common element between Row slice and Column slice
# Output:: my_arr[2:3, 2:3]
# [,1]       [,2]   
# [1,] "Anshu"    "Ankit"
# [2,] "Alankrit" "Aman" 

# Subset Array with Logical array
length_array <- array(c(125, 81, 118, 81, 106, 121, 95, 100, 104), dim = c(3,3))
length_array
mask_array <- length_array < 120
mask_array
x_array <- array(c("Akira", "Toy Story", "Room", "The Wave", "Whiplash",
                    "Star Wars", "The Ring", "The Artist", "Jumanji"), dim=c(3,3))
x_array[mask_array] # this created a subset array of x_array using mask array.



# _____________Matrix________________
# -----------------------------------

# Matrices are a sub-type of arrays. A matrix must have 2 dimensions, whereas arrays are more flexible and can have, one, two, or more dimensions.
vect = c("Ankit", "Aman", "Akash", "Akshit", "Ankur", "Anshu", "Alankrit", "Abhushan", "Akshunn")
my_mat = matrix(vect, nrow = 3, ncol = 3, byrow = T) # byrow = T means data will be written from left to write else it is written top to bottom (column first)
my_mat[2,3]
my_mat[2,]
my_mat[,2]
my_mat[2:3, 1]


# ______________Data Frame______________
# --------------------------------------
# A data frame is a structure that contains correlated information
 my_df <- data.frame(Name = c('Ankit', 'Anshu', 'Rakesh', 'Shubham', 'Kaushtubh', 'Akhil', 'Vineet', 'Puneet'),
                     Age = c(27, 29, 28, 26, 28, 28, 30, 25))

my_df$Name # Retrieve names column from data frame
my_df["Age"] # Retrieve Age Column 
my_df[1] # Retrieve column number 1
my_df[2] # Retrieve column number 2
my_df[2,1] # Retrieve Anshu from DF
my_df[2,2] # Retrieve Anshu's Age from DF

# Structure str() function to retrieve structure of the data frame
str(my_df)

# head() and tail() functions
head(my_df) # first 6 elements of DF
tail(my_df) # Last 6 elements of DF

# Inserting new column to the DF
my_df['Is_Smart'] <- c(T, T, F, F, T, T, F, T)
my_df

# Inserting new row using rbind()
my_df <- rbind(my_df, c(Name = "Satyam", Age = 28, Is_Smart = T ))

# Deleting rows from DF
my_df <- my_df[-9,]

# Deleting column from DF
my_df <- my_df[, -3] # can also be done by assigning NULL value to column name e.g. my_df[is_Smart] <- NULL
