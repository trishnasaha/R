y <- 10 # free variable

# function in use - dynamic scoping
f <- function(x){
  y <- 2 # disable usage of free variable 
  y^2 + g(x) # y = 2
}

# free function - lexical scoping
g <- function(x){
  x*y # y = 10
}