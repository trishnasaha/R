outcome <- read.csv("rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome)
nrow(outcome)
names(outcome)

outcome[ , 11] <- as.numeric(outcome[ , 11])
head(outcome[ , 11])
hist(outcome[ , 11])