# Ejemplo 1
for(i in 1:5){ print(i) }

# Ejemplo 2
dado <- 1:6
for(cara in dado){ dado ^ 2 }

# Ejemplo 3
x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}