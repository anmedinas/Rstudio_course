# Tópico : Dataframes
rm(list = ls())

x1 <- c(100, 99,100,20)
x2 <- c(20,19,19,10)
x3 <- c("A","B","C","D")
data <- data.frame(x1,x2,x3)
print(data)

# Dimensiones del dataframe 
dim(data)

# Numero de filas del dataframe 
nrow(data)

# Numero de columnas del dataframe 
ncol(data)

# Largo (filas por columnas) del dataframe
length(data) 

# Nombre de las filas y columnas del dataframe
dimnames(data)

# Nombre de las columnas 
names(data)
colnames(data)

