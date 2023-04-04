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