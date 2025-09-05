# Ejemplo 1
contador <- 0
repeat {
  print(contador)
  contador <- contador + 1 
  if(contador == 10) break
}

# Ejemplo 2
x <- seq(1,5)
for(i in x){
  if(i == 3){ break }
  print(i)
}