x <- c(1, 2, 3, 4, 5, 6)
 

range <- function(x){
  x = sort(x)
  return(x[length(x)]-x[1])
}

print(range(x))