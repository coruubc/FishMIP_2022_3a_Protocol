# Settings file for converting DBEM
# .txt files to .Rdata files
# Juliano Palacios

# Load required functions
library(here)
library(tidyverse)

variables <- c("Abd")

spplist <- read.table("~/projects/rrg-wailung/jepa/R/Data/Species/SppTaxonName.txt")

# Partial fix for not working species
# spplist <- dplyr::filter(spplist, V1 %in% c("603310","604708"))

stryr <- 1841
endyr <- 2010

# Scenario to call (Note this will derermine the results directory)
scen <- "fishmip3af0"

# Load required functions
source(here("functions/convert_fx.R")) # Load a bunch of packages

# Call function for scenarios in Settings file
lapply(variables,
       convert_fx,
       year_one = stryr,
       year_end = endyr,
       scen = scen
)