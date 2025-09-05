rm(list = ls())
library("dplyr")

# Ejemplo 4.1
iris %>% rename(Tipo = Species) %>% head(3)

# Ejemplo 4.2
iris %>% rename(
  Largo_Sepalo = Sepal.Length,
  Ancho_Sepalo = Sepal.Width,
  Largo_Petalo = Petal.Length,
  Ancho_Petalo = Petal.Width,
  Tipo = Species ) %>% head(3)

# Ejemplo 4.3
iris %>% select(Species, Sepal.Length, Sepal.Width) %>%
  filter(Species == "setosa") %>%
  rename(Tipo=Species, Largo=Sepal.Length, Ancho=Sepal.Width) %>%
  arrange(desc(Largo)) %>% head(5)


# Agregar otros ejemplos : (AMS) Otros ejemplos agregados