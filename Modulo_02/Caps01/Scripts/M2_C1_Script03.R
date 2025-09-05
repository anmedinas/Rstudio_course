rm(list = ls())
library("dplyr")

# Ejemplo 3.1 
iris %>% select(Species, Sepal.Length) %>%
  filter(Species == "setosa") %>%
  arrange(Sepal.Length) %>% head(5)

# Ejemplo 3.2
iris %>% select(Species, Sepal.Length) %>%
  filter(Species %in% c("setosa","virginica")) %>%
  arrange(Sepal.Length) 

# Ejemplo 3.3
iris %>% select(Species, Sepal.Length) %>%
  filter((Species %in% c("setosa","virginica")) & Sepal.Length > 4.5) %>%
  arrange(Sepal.Length) 
