# Tópico : Listas
rm(list = ls())

# 1. Creando listas                ----

# Creo distintos objetos
x <- c(45, 12, 56, 14, 16)
y <- c("auto", "bicicleta")
z <- matrix(1:12, ncol = 4)

# Creo lista
mi_lista <- list(x, y, z)
mi_lista

# Renombrar elementos de la lista 
mi_lista_nombres <- list(A=x, B=y, C=z)
mi_lista_nombres

# 2. Extrar elementos de una lista ----

# Primer elemento de la lista
mi_lista[1]

# Primer elemento de la lista, simplificando la salida
mi_lista[[1]]

# Primer elemento del primer elemento de la lista.
mi_lista[[1]][1]
unlist(mi_lista[1])[1] # Equivalente

# Primera columna del tercer elemento
mi_lista[[3]][, 1]

# Segundo elemento de la primera columna
# del tercer elemento de la lista
mi_lista[[3]][, 1][2]
mi_lista[[3]][2, 1] # Equivalente

# Primer elemento de la lista
mi_lista_nombres["A"]

# Primer elemento de la lista, simplificando la salida
mi_lista_nombres[["A"]]

# Primer elemento de la lista, simplificando la salida
mi_lista_nombres$A

# Primer componente del primer elemento de la lista
mi_lista_nombres$A[1]
unlist(mi_lista_nombres[1])[1]

# Primera columna del tercer elemento
mi_lista_nombres$C[, 1]
mi_lista_nombres$`C`[, 1] # Equivalente

# Segundo elemento de la primera columna
# del tercer elemento de la lista
mi_lista_nombres$C[, 1][2]
mi_lista_nombres$C[2, 1] # Equivalente

# Número de elementos de la lista
length(mi_lista) 

# Número de elementos del primer objeto
length(mi_lista[[2]]) 


# 3. Agregar elementos a una lista ----

mi_lista[[4]] <- data.frame(X = c(8, 5, 3), Y = c(7, 9, 1))
mi_lista 

# 4. Borrar elementos a una lista  ----

# Eliminando el segundo elemento de
mi_lista[[2]] <- NULL
mi_lista[-2]   # Equivalente

# Eliminando el primer y segundo elemento a la vez
mi_lista[-c(1, 2)]


# 5. Listas de listas o anidadas   ----

list_de_listas <- list(mi_lista, mi_lista_nombres)
list_de_listas

# Accediendo a elementos de lista anidada

# Accediendo a la primera lista
list_de_listas[[1]]

# Accediendo a la segunda lista
list_de_listas[[2]]

# Primer objeto de la segunda lista
list_de_listas[[2]][[1]] 

# Tercer elemento del primer objeto
# de la segunda lista
list_de_listas[[2]][[1]][3] 
list_de_listas[[2]]$A[3]    # Equivalente

# Puedes guardar las listas en objetos
# y acceder a los elementos de esa lista
# como explicamos en la sección correspondiente
lista_1 <- list_de_listas[[1]]

# Este sería el primer objeto
# de la primera lista
lista_1[[1]] 

# 6. Unir listas                   ----

# Datos originales
mi_lista <- list(x, y, z)
mi_lista_nombres <- list(A = x, B = y, C = z)

# Concatenar listas
append(mi_lista, mi_lista_nombres)
c(mi_lista, mi_lista_nombres)                # Equivalente
do.call(c, list(mi_lista, mi_lista_nombres)) # Equivalente

# 7. Convertir listas              ----

# Primer elemento de la lista a vector
unlist(mi_lista[[1]], use.names = FALSE)

# Lista completa como vector
unlist(mi_lista, use.names = FALSE)

# lista a dataframe 
mi_lista_4 <- list(c(1, 7, 3), c(9, 8, 1))
data.frame(matrix(unlist(mi_lista_4), nrow = length(mi_lista_4), byrow = TRUE))
do.call(rbind.data.frame, mi_lista_4) # Similar

