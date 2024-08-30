# read data from json file, clean, and report status

# load library
library(rjson)

# Read in messy data as a list 
#   dat_list <- fromJSON(file = "r-docker-read-json/input/messy_data.json")
dat_list <- fromJSON(file = "home/r-env/input/messy_data.json")

# Clean list and convert to df
dat_list <- lapply(dat_list, function(x) ifelse(x == "NULL" | x=="", NA, x))

df <- do.call(rbind.data.frame, dat_list)

# save df as csv
write.csv(df, "home/r-env/output/clean_data.csv", row.names=F)
