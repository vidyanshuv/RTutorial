# install.packages("httr")
library(httr)

# Making HTTP request
url<-'https://www.ibm.com/'
response<-GET(url)
response$status
# Retrieving Response Header & further information
response_headers <- headers(response)
response_headers
response_headers['date']
response_headers['content-type']
response$request$headers
response_headers['content-length']
# Retrieving Response Content
content(response)


# Sending get response to download an image
image_url<-'https://gitlab.com/ibm/skills-network/courses/placeholder101/-/raw/master/labs/module%201/images/IDSNlogo.png'
image_response<-GET(image_url)
image_headers <- headers(image_response)
image_headers['content-type']
# An image is a response object that contains the image as a bytes-like object. As a result, we must save it using a file object. First, we specify the file path and name
image <- content(image_response, "raw")
writeBin(image, "logo.png")


# GET request with URL Parameters
url_get <- 'http://httpbin.org/get'
query_params <- list(name = "vvishal", ID = "123")
response <- GET(url_get, query=query_params)
response$request$url
content(response)$args


# POST Requests
url_post <- 'http://httpbin.org/post'
body<- list(course_name='Introduction to R', instructor='vvishal')
response<-POST('http://httpbin.org/post', body = body)
response
response$request$fields


# ______________Web Scrapping___________
# --------------------------------------
install.packages("rvest") # Web Scrapping library
library(rvest)
library(httr)

simple_html_text <- "
<html>
    <body>
        <p style=\"color:red;\">This is a test html page</p>
    </body>
</html>"

# Create the root html node by reading the simple HTML string
root_node <- read_html(simple_html_text)
root_node
class(root_node)

# Create a HTML node by loading a remote HTML page given a URL
ibm_html_node <- read_html("http://www.ibm.com")
ibm_html_node
body_node <- html_node(root_node, "body")
body_node
p_node <- html_node(body_node, "p")
p_content<-html_text(p_node)
p_content

# Use the p_node as the first argument to get its attribute
style_attr <- html_attr(p_node, "style")
style_attr


# download the R home page and save it to an HTML file locally called r.html
download.file('https://www.r-project.org', destfile = 'r.html')

# Create a html_node from the local r.html file
html_node <- read_html('r.html')
html_node


# Example to get the full URL of the image, and use the GET function to request the image as bytes in the response
url <- 'https://www.r-project.org'
html_node <- read_html('r.html')

# Get the image node using its root node
img_node <- html_node(html_node, "img")
# Get the "src" attribute of img node, representing the image location
img_relative_path <- html_attr(img_node, "src")
img_relative_path

# Then use writeBin() function to save the returned bytes into an image file.
# Paste img_relative_path with 'https://www.r-project.org'
image_path <- paste(url, img_relative_path, sep="")
# Use GET request to get the image
image_response<-GET(image_path)

# Parse the body from the response as bytes
image <- content(image_response, "raw")
# Write the bytes to a png file
writeBin(image, "r.png")


# Download table and use it as R data frame so we can analyze it using data frame-related operations
table_url <- "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DA0321EN-SkillsNetwork/labs/datasets/HTMLColorCodes.html"
root_node <-read_html(table_url)
table_node <- html_node(root_node, "table")
table_node

# Extract content from table_node and convert the data into a dataframe
color_data_frame <- html_table(table_node)
head(color_data_frame)

names(color_data_frame)
# Convert the first row as column names
names(color_data_frame) <- as.matrix(color_data_frame[1, ])
# Then remove the first row
data_frame <- color_data_frame[-1, ]

head(data_frame)
names(color_data_frame)

