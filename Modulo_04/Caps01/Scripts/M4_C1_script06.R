# Ejemplo 19
data("mpg")
ggplot(mpg, aes(x=cty)) + 
  geom_density(kernel="gaussian")

# Ejemplo 20
ggplot(mpg, aes(x=cty, color=drv, fill=drv)) + 
  geom_density(alpha = 0.1)

# Ejemplo 21
ggplot(mpg, aes(x=cty, color=drv)) + 
  geom_density(alpha = 0.1)
