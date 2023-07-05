source("columnmean.R")
columnmean(airquality, FALSE)

#week2 assignment
source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10) # 4.064128
pollutantmean("specdata", "nitrate", 70:72) # 1.706047
pollutantmean("specdata", "sulfate", 34) # 1.477143
pollutantmean("specdata", "nitrate") # 1.702932

source("complete.R")
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs) # 228 148 124 165 104 460 232

cc <- complete("specdata", 54)
print(cc$nobs) # 219

RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"]) # 711 135  74 445 178  73  49   0 687 237

source("corr.R")
source("complete.R")
cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)  # 0.2688  0.1127 -0.0085  0.4586  0.0447

cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out) # 243.0000   0.2540   0.0504  -0.1462  -0.1680   0.5969

cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4))) # 0.0000 -0.0190  0.0419  0.1901

#week3 assignment
setwd("/home/rajesh/Dropbox/00_DROPBOX/GitHub/R/Coursera_learning/")
source("lexical_scoping.R")
cube <- make.power(3)
ls(environment(cube))
get("n", environment(cube))
get("pow", environment(cube))
cube(3)

square <- make.power(2)
ls(environment(square))
get("n", environment(square))
get("pow", environment(square))
square(3)


source("ProgrammingAssignment2/cachematrix.R")
myMatrix <- makeCacheMatrix(matrix(1:4, 2, 2))
myMatrix$get()

myMatrix$getsolve()

cacheSolve(myMatrix)


