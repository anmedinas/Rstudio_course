data("diamonds")

# Ejemplo 22 
ggplot(diamonds, aes(cut)) + 
  geom_bar()


# Ejemplo 23 
ggplot(diamonds) +geom_bar(mapping = 
             aes(x = cut, colour = cut))

# Ejemplo 24 
ggplot(diamonds) +
  geom_bar(mapping = 
             aes(x = "cut", fill = "cut"))

# Ejemplo 25
ggplot(diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

# Ejemplo 26
ggplot(data = diamonds, 
       mapping = aes(x = cut, fill = clarity)) +
  geom_bar(alpha = 1/5, position = "identity")
