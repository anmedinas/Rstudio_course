rm(list = ls())
library("dplyr")

iris %>% head(5)

iris %>% 
  summarise(
    n = n(),
    Sepal.Width.Mean = mean(Sepal.Width), 
    Sepal.Width.Sd = sd(Sepal.Width),
    Sepal.Width.Q1 = quantile(Sepal.Width, .25),
    Sepal.Width.Q2 = quantile(Sepal.Width, .50),
    Sepal.Width.Q3 = quantile(Sepal.Width, .75),
    Sepal.Length.Mean = mean(Sepal.Length), 
    Sepal.Length.Sd = sd(Sepal.Length)
    )


iris %>% 
  group_by(Species) %>%
  summarise(
    n = n(), 
    Sepal.Width.Mean = mean(Sepal.Width), 
    Sepal.Width.Sd = sd(Sepal.Width),
    Sepal.Width.Q1 = quantile(Sepal.Width, .25),
    Sepal.Width.Q2 = quantile(Sepal.Width, .50),
    Sepal.Width.Q3 = quantile(Sepal.Width, .75),
    Sepal.Length.Mean = mean(Sepal.Length), 
    Sepal.Length.Sd = sd(Sepal.Length)
  )