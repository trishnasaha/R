corr <- function(directory, threshold = 0){
  nobs <- complete(directory)
  keep <- nobs[(nobs$nobs > threshold),]
  
  filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  data_nobs_corr <- numeric()
  
  for(i in keep$id){
    data <- read.csv(filelist[i])
    data_nobs <- data[complete.cases(data),]
    data_nobs_corr <- c(data_nobs_corr, cor(data_nobs$sulfate, data_nobs$nitrate))
  }
  data_nobs_corr
}