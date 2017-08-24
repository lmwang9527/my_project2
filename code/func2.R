system.time({
output_vector <- vector(1000*length(LETTERS), mode="character")
df <- data.frame()
for(i in 1:1000){
  k <- 0
  for(j in LETTERS){
    temp_output <- paste(i, j)
    output_vector[i * 26 + k] <- temp_output
    k <- k + 1
  }
}
output_vector
})

source("code/func1.R")
my_sum

fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

fahr_to_kelvin(32) %>% 
  kelvin_to_celsius()

require(dplyr)
