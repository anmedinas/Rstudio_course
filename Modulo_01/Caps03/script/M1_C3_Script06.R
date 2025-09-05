# funciones map
library("purrr")

# map 
moons <-
  list(
    earth = 1737.1,
    mars = c(11.3, 6.2),
    neptune = 
      c(60.4, 81.4, 156, 174.8, 194, 34.8, 
        420, 2705.2, 340, 62, 44, 42, 40, 60)
  )

map(moons, length)

# map2 
x <- c(1, 2, 4)
y <- c(6, 5, 3)
map2_dbl(x, y, min)

# pmap 
x <- c(1, 2, 4)
y <- c(6, 5, 3)
pmap_dbl(list(x, y), min)
