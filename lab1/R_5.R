x = c(2, 3, 2, 1, 4, 5, 2, 9, 1)
mediana <- function(x){
  x = sort(x)
  if(length(x) %% 2 == 0){
    mid <- mean(x[length(x)%/%2], x[length(x)%/%2 + 1])
  }
  else{
    mid <- x[length(x)%/%2+1]
  }
  return(mid)
}

print(median(x))
print(mediana(x))
