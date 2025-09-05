# Ejemplo 1 
numero <- 20 
while(numero > 5){
  if(numero == 15){ break }
}
print(numero)

# Ejemplo 2 
for(i in 1:4) {
  if(i == 3) {
    next
  }
  print(i)
}