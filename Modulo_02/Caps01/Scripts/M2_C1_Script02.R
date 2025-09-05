rm(list = ls())
library("dplyr")
library("ggplot2")
library("stringr")

# Ejemplo 2.1 
msleep %>% 
  select(name, sleep_total) %>% 
  filter(sleep_total > 18) 

# Ejemplo 2.2
msleep %>% 
  select(name, sleep_total) %>% 
  filter(between(sleep_total, 16, 18))

# Ejemplo 2.3
msleep %>% 
  select(name, sleep_total) %>% 
  filter(near(sleep_total, 17, tol = sd(sleep_total)))

# Ejemplo 2.4
msleep %>% 
  select(order, name, sleep_total) %>% 
  filter(order == "Didelphimorphia")

# Ejemplo 2.5
msleep %>% 
  select(order, name, sleep_total) %>% 
  filter(order %in% c("Didelphimorphia", "Diprotodontia"))


# Ejemplo 2.6
remove <- c("Rodentia", "Carnivora", "Primates")
msleep %>% 
  select(order, name, sleep_total) %>% 
  filter(!order %in% remove)

# Ejemplo 2.7
msleep %>% 
  select(name, sleep_total) %>% 
  filter(str_detect(tolower(name), pattern = "mouse"))

# Ejemplo 2.8
msleep %>% 
  select(name, order, sleep_total:bodywt) %>% 
  filter(bodywt > 100, (sleep_total > 15 | order != "Carnivora"))

# Ejemplo 2.9
msleep %>%
  select(name, bodywt:brainwt) %>% 
  filter(xor(bodywt > 100, brainwt > 1))

# Ejemplo 2.10
msleep %>% 
  select(name, sleep_total, brainwt, bodywt) %>% 
  filter(brainwt > 1, !bodywt > 100)

# # Ejemplo 2.11
msleep %>% 
  select(name, conservation:sleep_cycle) %>% 
  filter(!is.na(conservation))

# Ejemplo 2.12
msleep %>% 
  select(name:order, sleep_total, -vore) %>% 
  filter_all(any_vars(str_detect(., pattern = "Ca")))

# Ejemplo 2.13
msleep %>%  
  select(name, sleep_total:bodywt) %>% 
  filter_all(any_vars(. < 0.1))

# Ejemplo 2.14
msleep %>%  
  select(name, sleep_total:bodywt, -awake) %>% 
  filter_all(all_vars(. > 1))

# Ejemplo 2.15
msleep %>% 
  select(name:order, sleep_total:sleep_rem) %>% 
  filter_if(is.character, any_vars(is.na(.)))

# Ejemplo 2.16
msleep %>% 
  select(name, sleep_total:sleep_rem, brainwt:bodywt) %>% 
  filter_at(vars(sleep_total, sleep_rem), all_vars(.>5))

# Ejemplo 2.17
msleep %>% 
  select(name, sleep_total:sleep_rem, brainwt:bodywt) %>% 
  filter_at(vars(contains("sleep")), all_vars(.>5))
