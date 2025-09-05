# Tópico : Vectores
rm(list = ls()) # Borra todas las variables del workspace. Es útil para liberar memoria RAM.

# 1. Construcción simple de Vectores         ---- 

# Vector
c(1,2,3,4,5) # Combinación
1:5          # Secuencia (sólo aplica a números enteros Ej: pi:8)   

# Vectores con distintas formas de asignación 
u <- c(1,2,3,4,5)          # asignación izquierda
print(u)

c(1,2,3,4,5) -> v          # asignación derecha 
print(v)

assign("w", c(1,2,3,4,5))  # usando función assign
print(w)

p = c(1,2,3,4,5)           # asignacion mediante igualdad
print(p)

# Vectores con diferente tipo de datos 

# Vector de enteros de largo 2 con valores 0 en cada posición
v <- vector("integer", 2) 
class(v)

# Vector numérico de largo 3 con valores 0 en cada posición
w <- vector("numeric", 3) 
class(w)

# Vector lógico de largo 5 con valores FALSE en cada posición
s <- vector("logical", 5) 
class(s)

c(TRUE,TRUE, FALSE, FALSE)
c(1:5, "seguir") #Cuando se justan vectores de distintas clases, se convierte todo a la clase más general (la más general de todas es character)
c("Hola","clase","como","estan?")


# 2. Construcción de vectores mediante seq() ----

# La sintáxis de la función seq(), es de la siguiente
# forma:
#
#             seq(from, to, by, length.out)
#
# from        : Donde comienza la secuencia. 
# to          : Final de la secuencia.
# by          : Incrementos (default 1).
# length.out  : Largo o tamaño de la secuencia.

# Genera secuencia de 5 a 10 (incremento por defecto 1)
seq(5, 10)

# Genera secuencia desde 0 hasta 20 con incrementos de 2
seq(from=0, to=20, by=2)

# Genera secuencia desde 0 hasta 20 de largo 5
seq(from=0, to=20, length.out=5)

# Genera secuencia desde 1 hasta 3 de largo 5
seq(from=1.0, to=3.0, length.out=5)

# Genera secuencia de -2.7 hasta 1.3 de largo 9
seq(from = -2.7, to = 1.3, length= 9)



# 3. Construcción de vectores mediante rep() ----

# La sintáxis de la función rep(), es de la siguiente
# forma:
#
#             rep(x, times = 1, length.out = NA, each = 1)
#
# x           : elemento a repetir.
# times       : Cantidad de veces a repetir el elemento x.
# length.out  : Largo o tamaño.
# each        : Cantidad de repeticiones por elemento x[i]

# Replica el 2, 10 veces
rep(2,10)

# Replica 1:4, 2 veces
rep(1:4, 2)

# Replica cada elemento de la secuencia, 2 veces
rep(1:4, each=2)

# Replica cada elemento de la secuencia, 2 veces (función c())
rep(1:4, c(2,2,2,2))

# Replica la secuencia con número alternado 2, 1 veces
rep(1:4, c(2,1,2,1))

# Replica la secuencia, dos veces por elemento y de tamaño 8
rep(1:4, each = 2, len = 8)

# Replica la secuencia, dos veces por elemento y de tamaño 4
rep(1:4, each = 2, len = 4)

# Replica la secuencia, dos veces por elemento, y lo hace 3 veces
rep(1:4, each = 2, times = 3)



# 4. Vectores con funciones matemáticas      ----

# Genero un vector secuencial de 1 a 4
a <- seq(1,4)

# Operaciones Elementales
a + 5; a - 10; a*4; a / 5

# Guardo en x la resta de a y 10
x <- a - 10

# Aplico Funciones matemáticas
sqrtX <- sqrt(x) # raiz cuadrada
expX <- exp(x) # exponencial
logX <- log(x) # logaritmo
cosX <- cos(x) # coseno
sinX <- sin(x) # seno
minX <- min(x) # minimo
maxX <- max(x) # maximo


x <- c(1,-2,3,-4)
y <- c(-1,2,-3,4)

# Minimo valor entre los dos vectores
min(x,y)

# Minimo Vector
z <- pmin(x,y); print(z)