# read data from json file, convert to df, and report status

# load library
library(rjson)

# Read in sample data as a list 
#   dat_list <- fromJSON(file = "r-docker-read-json/input/messy_data.json")
dat_list <- fromJSON(file = "home/r-env/input/sample_data.json")

# Convert list to df
df <- do.call(rbind.data.frame, dat_list)

# Check it worked and report back to user
if (exists("df") && is.data.frame(get("df"))) {
  print("Success! - data frame ready")
}

