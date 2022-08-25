# Catching errors
tryCatch(10 + "a", error = function(e)
  print("oops there was an error"))
  

tryCatch(
  for(i in 1:13){
    i <- 1+"a"
    paste("No issues so far", i)
  }, error = function(e) paste("Error Occured: ", e)
)

# Catching Warnings
tryCatch(as.integer("a"), warning = function(e)
  paste("Warning !!!:", e))
