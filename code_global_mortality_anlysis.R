### Project: Analyse global mortality data 
### Description: Analysing the global mortality data for tidy tuesday - as a practice project to
###              build our R compentency
### Author: Alex Sibelle
### Date  : 05/08/2019

# Load packages
library(tidyverse)
library(readxl)
library(janitor)

# Load data
#Specify file location, in this case a url
file <- "global_mortality.xlsx"

global_mortality <- read_xlsx(file) # read in file

# Clean names
names(global_mortality) -> original_names
names(global_mortality) <- make_clean_names(original_names, case = "snake") # Using the janitor package, clean names to snake case

# Analysis
str(global_mortality)

