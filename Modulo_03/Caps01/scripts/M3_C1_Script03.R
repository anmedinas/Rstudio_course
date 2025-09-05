library("data.table")
library("dplyr")

# Carga datos desde una carpeta mediante fread
iris <- fread("dataset/iris.csv", nrows = 7) %>% select(1:2)
iris

# Variable ambiente directorio personal
Sys.getenv("PWD")

# Elaboro PATH con carpeta DataExperimental
path <- paste(Sys.getenv("PWD"),"DataExperimental", sep = "/")

# Genero el PATH con el archvivo de la carpeta anterior
path_data <- list.files(path, pattern="*.csv", full.names = TRUE)

# Cargo set de datos con fread 
data <- fread(path_data)

# Visualizo Dataframe
View(data)
