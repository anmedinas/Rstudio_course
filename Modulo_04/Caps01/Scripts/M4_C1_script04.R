rm(list = ls())

library("ggplot2")

# Ejemplo 11 
data("diamonds")
ggplot(diamonds, aes(x=cut, y=price)) +
  geom_boxplot()

# Ejemplo 12
ggplot(diamonds, aes(x=cut, y=price, 
                     fill=cut)) + geom_boxplot(
                       outlier.colour = "red")

# Ejemplo 13 
ggplot(diamonds, aes(x=cut, y=price, fill=cut)) + 
  geom_boxplot(outlier.colour = "red", 
               outlier.size = 1, outlier.shape = 16)


# Ejemplo 14
ggplot(diamonds, aes(x=cut, y=price, 
                     fill=cut)) + geom_boxplot(notch=TRUE)

# Ejemplo 15
ggplot(diamonds, aes(x=cut, y=price, fill=cut)) + 
  geom_violin()

# Otros Ejemplos.

library("dslabs")
ggplot(gapminder,aes(x=continent, y=life_expectancy, fill=continent)) + 
  geom_boxplot() +
  geom_jitter(width=0.25, alpha=0.5)