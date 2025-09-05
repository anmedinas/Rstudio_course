rm(list = ls())
library("dplyr")

# Ejemplo 1.1 
mtcars %>% select(1,2) %>% head(3)
select(mtcars,1,2) %>% head(3)

# Ejemplo 1.2 
mtcars %>% select(-c("drat","wt","qsec",
                     "vs","am","gear","carb")) %>% head(3)

# Ejemplo 1.3
mtcars %>% select(1:4) %>% head(3)

# Ejemplo 1.4
iris %>% select(starts_with("Petal")) %>% head(3)

# Ejemplo 1.5
iris %>% select(ends_with("Width")) %>% head(3)

# Ejemplo 1.6
iris %>% select(contains("etal")) %>% head(3)

# Ejemplo 1.7
iris %>% select(matches(".t.")) %>% head(3)

# Ejemplo 1.8
iris %>% select(everything()) %>% head(3)
