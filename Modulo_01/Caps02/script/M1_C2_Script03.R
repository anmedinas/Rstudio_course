# Tópico : Matrices
rm(list = ls()) 

# 1. Creación de Matrices      ----

# Genero un vector consecutivo de 1 a 10
x <- 1:10

# Creo una matriz con los datos de x con dos filas, y 5 columnas
matrix(x,nrow=2,ncol=5)

# Tambien se puede crear utilizando los valores directamente
matrix(x,2,5)

# Llenamos la matriz desde las filas
matrix(x,2,5,byrow=T)

# Asigno a A la matriz creada
A <- matrix(x,2,5,byrow=T)

# ¿ Qué clase de objeto es A y que dimensión tiene ?
class(A); dim(A)

# ¿ Cuantas filas y columnas tiene A ?
dim(A)[1] ; nrow(A); dim(A)[2] ; ncol(A)

# Construyendo matriz con la funcion c()
x <- matrix(c(1,1,2,3,4,5,1,2,3),ncol=3)

# Construyendo matriz con la funcion seq()
x <- matrix(seq(1,9),ncol=3)

# Construyendo matriz con la funcion rep()
x <- matrix(rep(0,9),ncol=3)

# Construyendo matriz la funcion rep() y byrow=T
x <- matrix(rep(c(1,2,3),time=4),3,byrow=T)








# 2. Atributos de las Matrices ----

x <- c(1,2,3)
y <- c(4,5,6)
z <- c(7,8,9)

# Creo matriz con cbind
A <- cbind(x,y,z)
print(A)

# Creo matriz con rbind
B <- rbind(x,y,z) 
print(B)

# Dimension matriz A 
dim(A)

# N. filas de A 
nrow(A)

# N. columnas de A 
ncol(A)

# Largo de matriz de A
length(A)

# Devuelve la matriz Traspuesta de A
t_A <- t(A)
print(t_A)

# Dimension matriz B 
dim(B)

# Dimension matriz B
dim(B)

# N. filas de B 
nrow(B)

# N. columnas de B 
ncol(B)

# Largo de matriz de B
length(B)

# Devuelve la matriz Traspuesta de B
t_B <- t(B)
print(t_B)


# 3. Operaciones con Matrices  ----

# Creo Matriz
x <- matrix(1:10,2,5,byrow=T)
print(x)

# Multiplico por un escalar
print(2*x)

# Aplico exponencial a la matriz x
print(exp(x))

# Aplico log a la matriz x
print(log(x))

# Elevo x a 2
print(x^2)

# Creo dos matrices
x <- matrix(1:10,2,5,byrow=T)
y <- matrix(c(1,0,0,2),2,byrow=T)

# Multiplico Transpuesta de x por el y
t(x)%*%y

# Matriz Inversa de y
solve(y)

# Determinante de y
det(y)
# 4. Accediento a elementos de Matrices ----

# Creo matriz x
x <- matrix(1:15,3,byrow=T)
print(x)

# Accedo al elemento que esta en la fila 2 y columna 3
print(x[2,3])

# dos primeras filas y las tres primeras columnas
print(x[1:2,1:3])

# Muestra la primera columna
print(x[,1])

# Muestra la primera fila
print(x[1,])

# Muestra las columnas 2 hasta 3
print(x[,2:3])

# Remuevo la columna 4
print(x[,-4])

# Muestra el tercer elemento del vector x (matriz es vector)
print(x[3])
print(x[2])
print(x[3:7])