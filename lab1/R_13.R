x <- c(2, 3, 4, 5, 6)
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

kwartyl_bottom <- function(x){
  s <- mediana(x)
  sort(x)
  i <- 1
  repeat{
    if(x[i]>=s){
      break
    }
    else{
      i = i + 1
    }
  }
  return(mediana(x[1:i]))
}

kwartyl_top <- function(x){
  s <- mediana(x)
  sort(x)
  i <- 1
  repeat{
    if(x[i]>s){
      break
    }
    else{
      i = i + 1
    }
  }
  return(mediana(x[i:length(x)]))
}

iqrmine <- function(x){
  return(kwartyl_top(x) - kwartyl_bottom(x))
}

print(IQR(x))

print(iqrmine(x))

