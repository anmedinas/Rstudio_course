# Importando con read.csv (forma 1)
iris <- read.csv("dataset/iris.csv", sep = ";")

# Importando con read.csv (forma 2) 
iris <- read.csv(file.choose(), sep = ";")

# Importando con read.table
iris <- read.table("dataset/iris.csv", sep = ";")