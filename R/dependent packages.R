#===============================================================================
#
# This script loads the projects' dependent packages.
#
# MDP, CAS 1T16
#===============================================================================

# vector of packages used in the analysis
pkgArray <- c("dplyr", "tidyr", "stringr", "lubridate", "googleVis", "tm"
              , "d3heatmap", "SnowballC", "topicmodels", "fpc", "caret")

# check to ensure the user has all the dependent packages installed
for(pkg in pkgArray){check_packages(pkg)}

# attach dependent packages
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(stringr))
suppressPackageStartupMessages(library(lubridate))
suppressPackageStartupMessages(library(googleVis))
suppressPackageStartupMessages(library(tm))
suppressPackageStartupMessages(library(d3heatmap))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(SnowballC))
suppressPackageStartupMessages(library(topicmodels))
suppressPackageStartupMessages(library(fpc))
suppressPackageStartupMessages(library(caret))
suppressPackageStartupMessages(library(mda))
