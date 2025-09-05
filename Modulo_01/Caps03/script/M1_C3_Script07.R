texto <- function(){ 
  return("Hola curso") }

texto()

cuadrado <- function(x){
  return(x^2)
}

cuadrado(3)

xln <- function(x){
  if (x == 0) { 
    return(0) 
  } else 
  { return(-x * log(x)) } 
}

xln(5)
