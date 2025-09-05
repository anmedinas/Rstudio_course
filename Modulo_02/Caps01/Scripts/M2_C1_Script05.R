rm(list = ls())
library("dplyr")

# Ejemplo 5.1 (mutate)
iris %>% 
  select(Species, Sepal.Length) %>%
  mutate(Sepal2 = Sepal.Length^2) %>%
  head(1)

# Ejemplo 5.2 (transmute)
iris %>% 
  select(Species, Sepal.Length)%>%
  transmute(Sepal2 = Sepal.Length^2)%>%
  head(1)

# Ejemplo 5.3 (transmute sin select)
iris %>% 
  transmute(Sepal2 = Sepal.Length^2)%>%
  head(1)
