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
library(dplyr)
library(stringr)

# data access - assume the data pull has been made
testData <- data.frame(
  co_name = c(
      "The Boston Consulting Group"
    , "Boston Consulting"
    , "Boston Consulting Group"
    , "Citizens Bank"
    , "Boston Globe"
    , "Boston Construction Company"
    , "Boston Construction"
  )
  , db_name = c(
      "DB1"
    , "DB2"
    , "DB3"
    , "DB3"
    , "DB2"
    , "DB3"
    , "DB3"
  )
)


searchString <- "The Boston Consulting Group"

# match searchString with the testData
