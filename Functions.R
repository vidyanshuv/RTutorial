# _________Function______
# =======================

# Function is a reusable block of code and are of 2 types: 1. Predefined functions    2. User defined functions
printHelloWorld <- function(){
  print("Using function to print Hello world")
}

printHelloWorld()

add <- function(x, y){
  x + y
}

add(3, 4)

# Return statement: can be used to explicitly returning a value to main program

add_ret <- function(x, y){
  sum <- x + y
  return(sum)
}

add_ret(30, 41)


# Local & Global variable
myfunc <- function(){
xglo <<- "Global" # A global variable
  yloc <- 9L # A local variable
  print("This was a demonstration")  
}
print(xglo)


# Nested Function()
Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3))

# Function inside function
Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) # To call the Outer_func
output(5) # To call Inner_func 


# Recursion: Recursion is a common mathematical and programming concept. It means that a function calls itself. This has the benefit of meaning that you can loop through data to reach a result.
tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)

