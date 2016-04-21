#===============================================================================
#
# This script lays the core functionality to fuzzy match a search term with 
# terms represented in slightly different ways.  The varition can arise by
# different inputs to different databases, yet the terms all refer to the same
# entity.
#
# MDP, Sr. Data Scientist, GE Corporate Audit Staff
#===============================================================================

# libraries
library(dplyr)      # for data processing and chaining
library(stringdist) # for fuzzy string matching

# data access - assume the data pull has been made
testData <- data.frame(
  co_name = c(
    "The Boston Consulting Group", "Boston Construction"
    , "Boston Consulting Group", "Citizens Bank", "Boston Globe"
    , "Boston Construction Company", "Boston Consulting"
  )
  , db_name = c(
    "DB1", "DB2", "DB3", "DB3", "DB2", "DB3", "DB2"
  )
  , stringsAsFactors = FALSE
)

searchString <- "The Boston Consulting Group"

# match searchString with the testData
# define the function
fuzzy_match <- function(searchString, targetData, matchThreshold = 0.60){
  targetData %>%
    mutate(match_percent = stringsim(searchString, co_name)) %>%
    dplyr::filter(match_percent >= matchThreshold) %>%
    arrange(desc(match_percent))
}

# test execution of the function
fuzzy_match(searchString = searchString, targetData = testData)

  
