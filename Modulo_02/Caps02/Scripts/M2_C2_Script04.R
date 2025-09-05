rm(list = ls())
library("dplyr")

# Data Artificial.
set.seed(1234)
trabajador_id <- 1:10
trabajador_nombre <- c("Andrew", "Susan", "John", "Joe", "Jack",
                       "Jacob", "Mary", "Kate", "Jacqueline", "Ivy")

trabajador_salario <- round(rnorm(10, mean = 1500, sd = 200))
trabajador_edad    <- round(rnorm(10, mean = 50, sd = 8))
trabajador_puesto  <- c("CTO", "CFO", "Administrativo", rep("Técnico", 7))

df1 <- data.frame(id = trabajador_id[1:8], nombre = trabajador_nombre[1:8],
                  salario_mensual = trabajador_salario[1:8])

# id nombre salario_mensual
# 1  1 Andrew            1259
# 2  2  Susan            1555
# 3  3   John            1717
# 4  4    Joe            1031
# 5  5   Jack            1586
# 6  6  Jacob            1601
# 7  7   Mary            1385
# 8  8   Kate            1391

df2 <- data.frame(id = trabajador_id[-5], nombre = trabajador_nombre[-5],
                  edad = trabajador_edad[-5], position = trabajador_puesto[-5])

# id     nombre edad       position
# 1  1     Andrew   46            CTO
# 2  2      Susan   42            CFO
# 3  3       John   44 Administrativo
# 4  4        Joe   51        Técnico
# 5  6      Jacob   49        Técnico
# 6  7       Mary   46        Técnico
# 7  8       Kate   43        Técnico
# 8  9 Jacqueline   43        Técnico
# 9 10        Ivy   69        Técnico

# Ejemplo 4

merge(x = df1, y = df2, all.y = TRUE)

dplyr::right_join(df1, df2)

