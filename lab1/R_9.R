x <- c(2, 3, 4, 5, 6)

avgdeviation <- function(x){
  s <- 0
  avg <- mean(x)
  for(i in x){
    s = s + abs(i - avg)
  }
  return(s/length(x))
}

print(avgdeviation(x))