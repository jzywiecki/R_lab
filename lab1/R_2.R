x <- c(2, 3, 4, 5, 6)

avgfun <- function(x){
  answer <- sum(x)/length(x)
  return(answer)
}


avgfor <- function(x){
  suma <- 0
  for(el in x){
    suma <- suma + el
  }
  return(suma/length(x))
}

avgwhile <- function(x){
  suma <- 0
  i <- 1
  while(i < length(x)+1){
    suma = suma + x[i]
    i = i + 1
  }
  return(suma/length(x))
}

avgrep <- function(x){
  suma <- 0
  i <- 1
  repeat{
    if(i == length(x)+1){
      break
    }
    suma = suma + x[i]
    i = i + 1
  }
  return(suma/length(x))
}

print(avgfun(x))
print(avgfor(x))
print(avgwhile(x))
print(avgrep(x))
print(mean(x))

