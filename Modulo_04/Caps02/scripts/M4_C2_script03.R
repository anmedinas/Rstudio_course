rm(list = ls())

library("ggplot2")

# Ejemplo 14 
ggplot(mpg, aes(cty, hwy, color = factor(cyl))) +
  geom_jitter() + 
  geom_abline(colour = "grey50", size = 2)

# Ejemplo 15 
ggplot(mpg, aes(cty, hwy, 
                color = factor(cyl))) +
  geom_jitter(size = 3) + 
  geom_abline(colour = "grey50", 
              size = 2) + 
  labs(
    x = "Eje X",
    y = "Eje Y",
    colour = "Cylinders",
    title = "Titulo") +
  scale_colour_brewer()


# Ejemplo 16
ggplot(mpg, aes(cty, hwy, 
                color = factor(cyl))) +
  geom_jitter(size = 3) + 
  geom_abline(colour = "grey50", 
              size = 2) + 
  labs(
    x = "Eje X",
    y = "Eje Y",
    colour = "Cylinders",
    title = "Titulo") +
  scale_colour_brewer(palette = "Set1")

# Ejemplo 17
ggplot(mpg, aes(cty, hwy, 
                color = factor(cyl))) +
  geom_jitter(size = 3) + 
  geom_abline(colour = "grey50", size = 2) +
  theme_minimal() + 
  labs(
    x = "Eje X",
    y = "Eje Y",
    colour = "Cylinders",
    title = "Titulo") +
  scale_colour_brewer(palette = "Set1")

# Ejemplo 18
ggplot(mpg, aes(cty, hwy, color = factor(cyl))) +
  geom_jitter(size = 2) + 
  geom_abline(colour = "grey50", size = 2) + 
  theme_minimal() + 
  labs(
    x = "Eje X",
    y = "Eje Y",
    colour = "Cylinders",
    title = "Titulo") + 
  theme(
    plot.title = element_text(face = "bold", size = 12),
    legend.background = element_rect(fill = "white", size = 4, colour = "white"),
    legend.justification = c(0, 1),
    legend.position = c(0, 1),
    axis.ticks = element_line(colour = "grey70", size = 0.2),
    panel.grid.major = element_line(colour = "grey70", size = 0.2),
    panel.grid.minor = element_blank()) +
  scale_colour_brewer(palette = "Set1")


