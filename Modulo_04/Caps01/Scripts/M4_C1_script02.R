rm(list = ls())

library("ggplot2")

# Ejemplo 3
ggplot(data = iris, aes(
  x = Sepal.Length, y = Petal.Length)) + 
  geom_point()

# Ejemplo 4 
ggplot(data = iris, aes(
  x = Sepal.Length, y = Petal.Length, 
  colour = Species)) + 
  geom_point(size = 3)

# Ejemplo 5 
ggplot(data = iris, aes(
  x = Sepal.Length, y = Petal.Length, 
  colour = Species)) + 
  geom_point(size = 3, aes(shape=Species))

# Ejemplo 6 
ggplot(data = iris, aes(x=Sepal.Length, 
                        y=Petal.Length, group=Species)) +
  geom_point(aes(shape=Species, color=Species), size=3)

# Ejemplo 7 
ggplot(data = iris, aes(x = Sepal.Length, 
                        y = Petal.Length, 
           colour = Species)) + 
  geom_point(size = 3, alpha = 0.5)

# Ejemplo con geom_smooth
ggplot(data = iris, 
       aes(x = Sepal.Length, y = Petal.Length, colour = Species)) + 
  geom_point(size = 3, alpha = 0.5) +
  geom_smooth(method = "lm", formula = y~x, size = 1.5)
