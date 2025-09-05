rm(list = ls())

library("ggplot2")

# Ejemplo 8
data("economics")
ggplot(data = economics, aes(x=date, y=uempmed)) +
  geom_line()


# Ejemplo 9 
ggplot(data = economics, aes(x=date, y=uempmed)) +
  geom_line(size = 1.5, color = "blue", alpha = 0.5)


# Ejemplo 10 
library("dslabs") #Instalar libreria en caso de no tenerla
ggplot(data = gapminder, aes(x=year, y=life_expectancy, by=country, colour=continent)) +
  geom_line()
