
if(!require(readr)) {
  read_func <- read.csv
} else
  read_func <- read_csv

args <- commandArgs(trailingOnly = TRUE)
file_name <- args[1]
print(file_name)

input_data <- read_func(file_name)

object.size(input_data)
nrow(input_data)
ncol(input_data)
head(input_data)
