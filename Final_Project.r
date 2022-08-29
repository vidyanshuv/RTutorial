library(httr)
library(rvest)
get_wiki_covid19_page <- function() {
    
  # Our target COVID-19 wiki page URL is: https://en.wikipedia.org/w/index.php?title=Template:COVID-19_testing_by_country  
  # Which has two parts: 
    # 1) base URL `https://en.wikipedia.org/w/index.php  
    # 2) URL parameter: `title=Template:COVID-19_testing_by_country`, seperated by question mark ?
    
  # Wiki page base
  wiki_base_url <- "https://en.wikipedia.org/w/index.php"
  # You will need to create a List which has an element called `title` to specify which page you want to get from Wiki
  # in our case, it will be `Template:COVID-19_testing_by_country`
  query_title <- list(title = "Template:COVID-19_testing_by_country")
  # - Use the `GET` function in httr library with a `url` argument and a `query` arugment to get a HTTP response
  response <- GET(wiki_base_url, query=query_title) 
  # Use the `return` function to return the response
  return(response)
}

response <- get_wiki_covid19_page()
response
# Get the root html node from the http response in task 1 
root_node <- read_html(response)
root_node
# Get the table node from the root html node
table_xpath <- 'div.COVID-19_testing_by_country > table'
table_node <- html_node(root_node, table_xpath)
table_node
# Read the table node and convert it into a data frame, and print the data frame for review
table_data <- html_table(table_node)
table_data

preprocess_covid_data_frame <- function(data_frame) {  
    shape <- dim(data_frame)

    # Remove the World row
    data_frame<-data_frame[!(data_frame$`Country or region`=="World"),]
    # Remove the last row
    data_frame <- data_frame[1:172, ]
    # We dont need the Units and Ref columns, so can be removed
    data_frame["Ref."] <- NULL
    data_frame["Units[b]"] <- NULL
    # Renaming the columns
    names(data_frame) <- c("country", "date", "tested", "confirmed", "confirmed.tested.ratio", "tested.population.ratio", "confirmed.population.ratio")
    # Convert column data types
    data_frame$country <- as.factor(data_frame$country)
    data_frame$date <- as.factor(data_frame$date)
    data_frame$tested <- as.numeric(gsub(",","",data_frame$tested))
    data_frame$confirmed <- as.numeric(gsub(",","",data_frame$confirmed))
    data_frame$'confirmed.tested.ratio' <- as.numeric(gsub(",","",data_frame$`confirmed.tested.ratio`))
    data_frame$'tested.population.ratio' <- as.numeric(gsub(",","",data_frame$`tested.population.ratio`))
    data_frame$'confirmed.population.ratio' <- as.numeric(gsub(",","",data_frame$`confirmed.population.ratio`))
    return(data_frame)
}
# call `preprocess_covid_data_frame` function and assign it to a new data frame
covid_df <- preprocess_covid_data_frame(table_data)
summary(covid_df)
write.csv(covid_df, file = "C:/Users/Vidyanshu.Vishal/Documents/R Learning/covid.csv")

# Read covid_data_frame_csv from the csv file
covid_data_frame_csv <- read.csv("C:/Users/Vidyanshu.Vishal/Documents/R Learning/covid.csv")

# Get the 5th to 10th rows, with two "country" "confirmed" columns
covid_data_frame_csv[5:10, c("country", "confirmed")]

# Get the total confirmed cases worldwide
total_confirmed_cases <- sum(covid_data_frame_csv["confirmed"])
paste("Total confirmed cases worldwide:", total_confirmed_cases)

# Get the total tested cases worldwide
total_tested_cases <- sum(covid_data_frame_csv["tested"])
paste("Total tested worldwide:", total_tested_cases)

# Get the positive ratio (confirmed / tested)
positive_ratio <- total_confirmed_cases/total_tested_cases
paste("Positive Ratio (confirmed / tested): ", positive_ratio)

# Get the `country` column
country <- covid_data_frame_csv$country
# Check its class (should be Factor)
class(country)
# Conver the country column into character so that you can easily sort them
country <- as.character(country)
# Sort the countries AtoZ
country_AZ <- sort(country)
# Sort the countries ZtoA
country_ZA <- sort(country,  decreasing = T)
# Print the sorted ZtoA list
country_ZA

# Use a regular expression `United.+` to find matches
united_countries <- grep("United*", country)
# Print the matched country names
country[united_countries]

# TASK 8: Pick two countries you are interested, and then review their testing data¶
# The goal of task 8 is to compare the COVID-19 test data between two countires, you will need to select two rows from the dataframe, and select country, confirmed, confirmed-population-ratio columns

# Select two subsets (should be only one row) of data frame based on a selected country name and columns
# Select a subset (should be only one row) of data frame based on a selected country name and columns
row_in <- which(covid_data_frame_csv$country == "India")
india <- covid_data_frame_csv[row_in,c("country", "confirmed", "confirmed.population.ratio")]

# Select a subset (should be only one row) of data frame based on a selected country name and columns
row_pk <- which(covid_data_frame_csv$country == "Pakistan")
pakistan <- covid_data_frame_csv[row_pk,c("country", "confirmed", "confirmed.population.ratio")]

if(india$confirmed.population.ratio > pakistan$confirmed.population.ratio){
    print("'India' has higher COVID-19 infection risk")
    }else{
    print("'Pakistan' has higher COVID-19 infection risk")}

# Get a subset of any countries with `confirmed.population.ratio` less than the threshold
safe_country_index <- which(covid_data_frame_csv$confirmed.population.ratio < 1)
safe_country <- covid_data_frame_csv[safe_country_index, c("country")]
safe_country
