# GREP() to find a substring
grep("@.*", c("anshuraj132@gmail.com", "farjimail.com", "vishal132@live.com", "vidyanshu.vishal@ymail.com"))

# Print the matching string
grep("@.*", c("anshuraj132@gmail.com", "farjimail.com", "vishal132@live.com", "vidyanshu.vishal@ymail.com"), value = T)

# Replacing a sub-string after performing a search with pattern
gsub("@.*", "@vcodingonline.com",c("anshuraj132@gmail.com", "farjimail.com", "vishal132@live.com", "vidyanshu.vishal@ymail.com"))

# using regexpr() and regmatches() to extract and match substrings
matched <- regexpr("@.*", c("anshuraj132@gmail.com", "farjimail.com", "vishal132@live.com", "vidyanshu.vishal@ymail.com"))
regmatches(c("anshuraj132@gmail.com", "farjimail.com", "vishal132@live.com", "vidyanshu.vishal@ymail.com"), matched)
