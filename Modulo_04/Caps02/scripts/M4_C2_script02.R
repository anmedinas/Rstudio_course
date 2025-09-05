rm(list = ls())

library("ggplot2")

# Ejemplo 6
ggplot(mpg, aes(displ, hwy)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth()

# Ejemplo 7
ggplot(mpg, aes(displ, hwy)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth() +
  scale_x_continuous(limits = c(4, 6))

# Ejemplo 8
ggplot(mpg, aes(displ, hwy)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth() +
  coord_cartesian(xlim = c(4, 6))

# Ejemplo 9
ggplot(mpg, aes(cty, displ)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth()

# Ejemplo 9 (coord_flip con boxplor)
ggplot(ToothGrowth,
       aes(x = dose, y = len,
           group = factor(dose))) +
  geom_boxplot(aes(fill = factor(dose)))

# Ejemplo 10 (coord_flip con boxplor)
ggplot(ToothGrowth,
       aes(x = dose, y = len,
           group = factor(dose))) +
  geom_boxplot(aes(fill = factor(dose)))

# Ejemplo 10
ggplot(mpg, aes(displ, cty)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth() + coord_flip()

# Ejemplo 11
ggplot(mtcars, aes(mpg, wt)) +
  geom_point() +
  coord_fixed(ratio = 1)

# Ejemplo 12
ggplot(mtcars, aes(mpg, wt)) +
  geom_point() +
  coord_fixed(ratio = 5)
