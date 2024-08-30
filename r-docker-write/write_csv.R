# generate random data and save out as a csv

# create data frame
x <- rnorm(20,3,2)
y <- x + rnorm(20,0,1)

df <- cbind.data.frame(x,y)

# save file as csv
write.csv(df, "home/r-env/output/sample_data.csv", row.names=F)
