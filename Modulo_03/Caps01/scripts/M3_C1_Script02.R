library("readr")

# Carga set de datos separador ";"
iris <- read_delim("dataset/iris.csv", delim = ";")

# Muestra primeros registros
head(iris)

# Examina las especificaciones por columna del dataframe
spec(iris)
