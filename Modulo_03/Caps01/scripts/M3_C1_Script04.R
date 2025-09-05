library("readr")
library("data.table")

iris <- read.table("dataset/iris.csv", sep = ";")

# Exportando con paquete utiles (base)
write.csv(iris, "dataset/iris_v1_utils.txt")
write.table(iris, "dataset/iris_v2_utils.txt", sep=";")

# Exportando con readr
write_csv(iris, "dataset/iris_v1_readr.txt")
write_delim(iris, "dataset/iris_v2_readr.txt", delim = ";")
write_delim(iris, "dataset/iris_v3_readr.txt", delim = "\t")
write_delim(iris, "dataset/iris_v4_readr.txt", delim = " ")

# Exportando con data.table
fwrite(iris, "dataset/iris_fwrite.txt", sep = ";")
