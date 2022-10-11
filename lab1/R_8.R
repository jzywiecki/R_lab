x <- c(2, 3, 4, 5, 6)

stddeviation <- function(x){
  s <- 0
  a <- mean(x)
  for(i in x){
    s <- s + (i - a)^2
  }
  return(sqrt(s/(length(x)-1)))
}

print(stddeviation(x))
print(sd(x))