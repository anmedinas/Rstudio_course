rm(list = ls())
library("dplyr")

mtcars %>% 
  select(mpg, hp, cyl, wt) %>% 
  filter(cyl != 4 & wt > 3.000) %>% 
  group_by(cyl) %>% 
  summarize(mean(hp), mean(mpg)) %>%
  rename(Prom_hp =`mean(hp)`,
         Prom_mpg = `mean(mpg)`)

