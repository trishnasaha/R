## Test R file
setwd("/Users/trishna/Dropbox/00_DROPBOX/GitHub/R")

## Test file coursera R quiz1
df = read.csv("hw1_data.csv")
x <- df[ ,1]
bad <- is.na(x)
y <- x[!bad]
mean(y)

keep <- df$Ozone > 31 & df$Temp > 90
table(keep)
dim(keep)

df1 <- subset(df, Ozone > 31 & Temp > 90)
mean(df1$Solar.R)

df2 <- subset(df, Month == 6)
mean(df2$Temp)

df3 <- subset(df, Month ==5)
p <- df3[ ,1]
good <- is.na(p)
q <- p[!good]
max(q)
##or
head(df3)
a <- complete.cases(df3)
b <- (df3[a, ])
max(b$Ozone)


#my first function
addtwo <- function(x, y) {
  x+y
}


cube <- function(x, n) {
      x^3
}

x <- 1:10
if(x > 5) { 
    x <-0
}

f <- function(x) {
      g <- function(y) {
          y+z
      }
      z <- 4
      x + g(x)
}
z <- 10
f(3)

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}




##quiz3

library(datasets)
data(iris)
?iris

z <- data.frame(iris)
head(z)
p <- subset(z, Species == "virginica")
head(p)
mean(p$Sepal.Length)
round(mean(p$Sepal.Length))


apply(iris[, 1:4], 2, mean) 
#Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
#5.843333     3.057333     3.758000     1.199333

library(datasets)
data(mtcars)
?mtcars
head(mtcars)

sapply(split(mtcars$mpg, mtcars$cyl), mean)
#4        6        8 
#26.66364 19.74286 15.10000 
tapply(mtcars$mpg, mtcars$cyl, mean)
#4        6        8 
#26.66364 19.74286 15.10000 
with(mtcars, tapply(mpg, cyl, mean))
#4        6        8 
#26.66364 19.74286 15.10000 

#what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
car <- tapply(mtcars$hp, mtcars$cyl, mean)
car
#4         6         8 
#82.63636 122.28571 209.21429 
round(abs(car[3] -car[1]))
#8 
#127 
round(abs(car[1] -car[3]))
#4 
#127




set.seed(1)
rpois(5, 2)

set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e