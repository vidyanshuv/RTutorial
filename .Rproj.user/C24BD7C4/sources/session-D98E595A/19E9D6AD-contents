# _____________ Loops in R_______________
# Loops is a way of executing a block of code as long as a certain condition is met
# There are two types of loops in R:    1. While      2. For

# 1. while loop: Can execute a code block as long as the condition is true and often contains an increment or decrement operation within
i <- 1
while (i < 6) {    
  print(i)
  i <- i + 1
}
# Syntax: while(condition){code block to be executed}

# Break Statement: With the break statement, we can stop the loop even if the while condition is TRUE
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    print("Breaking the loop") # The loop will stop at 3 because we have chosen to finish the loop by using the break statement when i is equal to 4 (i == 4).
    break
  }
}

# Next Statement : With the next statement, we can skip an iteration without terminating the loop
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    print("Using next to skip iteration at i==3")
    next # Skipping the iteration for i==3
  }
  print(i)
}


# 2. For Loop: A for loop is used for iterating over a sequence:
for (x in 1:10) {
  print(x)
}

# With the for loop we can execute a set of statements, once for each item in a vector, array, list, etc..
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}

my_vect <- c(20, 30, 22, 44, 57, 89)
print("Printing vector elements after adding 10 to each element")
for(x in my_vect){
  print(x+10)
} 

# Can also use Break & Next in for loop similar to while e.g.

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if(x == "banana"){
    break
  }
  print(x)
}

for (x in fruits) {
  if(x == "banana"){
    next
  }
  print(x)
}

# Nested for loop : for loop can be nested to iterate over an element while iterating over other e.g. 
adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}







