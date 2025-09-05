rm(list = ls())

library("ggplot2")

# Ejemplo 16
ggplot(diamonds, aes(x=carat)) + 
  geom_histogram(bins=30)

# Ejemplo 17
ggplot(diamonds, aes(x=carat)) + 
  geom_histogram(binwidth=0.05)

# Ejemplo 18
ggplot(diamonds, aes(x=carat)) + 
  geom_histogram(alpha=0.5, fill="blue")

