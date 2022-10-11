x = c(2, 3, 4, 5)

variance <- function(x){
  avg <- mean(x)
  suma <- 0
  for(i in x){
    suma = suma + (i - avg)^2
  }
  return(suma/(length(x)-1))
}

print(var(x))
print(variance(x))