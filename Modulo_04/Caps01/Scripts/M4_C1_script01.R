rm(list = ls())

library("ggplot2")

# Ejemplo 1 ----
data(iris)
ggplot(data = iris)


# Ejemplo 2 ----
ggplot(data = iris, aes(
  x = Sepal.Length, y = Petal.Length, 
  colour = Species))


