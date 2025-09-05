rm(list = ls())
library("readxl")
library("dplyr")

# Ruta de archivo xlsx ejemplo del paquete readxl
ruta_archivo <- readxl_example("clippy.xlsx")

# Comprobar nombres de las hojas del archivo
excel_sheets(ruta_archivo)

# Lee el archivo que esta en ruta_archivo
data <- read_excel(ruta_archivo)

# Seleccionamos hojas diferentes
df1 <- read_excel(ruta_archivo, sheet = "two-row-header")
df2 <- read_excel(ruta_archivo, sheet = 2)

# Saltarse filas o el encabezado
read_excel(ruta_archivo, skip = 1)

# Especificar rangos de lectura
read_excel(ruta_archivo, range = "B1:B5")
read.xlsx(ruta_archivo, cols = 1:2, rows = 2:3)

# Eviar leer nombre de columnas 
read_excel(ruta_archivo, col_names = FALSE)

# Convertir a dataframe

# Opcion 1 
data <- read_excel(ruta_archivo)
data <- data.frame(data)

# Opcion 2
data <- read_excel(ruta_archivo, skip = 1) %>%
  data.frame()