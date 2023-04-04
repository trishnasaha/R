columnmean <- function(y, rmNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  
  for(i in 1:nc){
    means[i] <- mean(y[, i], na.rm = rmNA)
  }
  
  means
}