rm(list = ls())
library("ggplot2")
library("dslabs")

data("mpg")
data("gapminder")
data("diamonds")
data("ToothGrowth")

##############################################
## facet_wrap 
##############################################
# geom_point()     ----
# Ejemplo 1 
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  facet_wrap(~cyl)

# Ejemplo 2 
ggplot(data = mpg, 
       aes(x = displ, y = hwy)) + 
  geom_point(size = 2, alpha = 0.5) + 
  facet_wrap(~cyl)

# Ejemplo 3 
ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) + 
  geom_point(size = 2, alpha = 0.5) + 
  facet_wrap(~cyl)

# geom_line()      ----

ggplot(data = gapminder, 
       aes(x=year, y=life_expectancy, by=country, colour=continent)) + 
  geom_line() + 
  facet_wrap(~continent)

ggplot(data = gapminder, 
       aes(x=year, y=life_expectancy, by=country, colour=continent)) + 
  geom_line(alpha = 0.4, size = 1) + 
  facet_wrap(~continent, nrow = 1)

# geom_boxplot()   ----

# Ejemplo 4 
ggplot(ToothGrowth, aes(x=dose, y=len, group=factor(dose))) + 
  geom_boxplot(aes(fill=factor(dose))) + 
  facet_wrap(supp ~ .)

# Ejemplo 5
ggplot(ToothGrowth, aes(x=dose, y=len, group=factor(dose))) + 
  geom_boxplot(aes(fill=factor(dose))) + 
  facet_wrap(.~supp)

# geom_histogram() ----

ggplot(diamonds, aes(x=price)) + 
  geom_histogram(bins = 30) + 
  facet_wrap(~cut)

ggplot(diamonds, aes(x=price, fill=cut)) + 
  geom_histogram(bins = 30, alpha = 0.7) + 
  facet_wrap(~cut, scales = "free", nrow = 1)


# geom_density()   ----

ggplot(mpg, aes(x=cty, color=drv)) + 
  geom_density(alpha = 0.1) + 
  facet_wrap(~drv, ncol = 1)

ggplot(mpg, aes(x=cty, color=drv, fill=drv)) + 
  geom_density(alpha = 0.1) + 
  facet_wrap(~drv, scales = "free")

# geom_bar()       ----

ggplot(diamonds, aes(cut)) + 
  geom_bar() + 
  facet_wrap(~color)

##############################################
# facet_grid    
##############################################
# geom_point()     ----

ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  facet_grid(~cyl)

ggplot(data = mpg, 
       aes(x = displ, y = hwy)) + 
  geom_point(size = 2, alpha = 0.5) + 
  facet_grid(~cyl)

# geom_line()      ----

ggplot(data = gapminder, 
       aes(x=year, y=life_expectancy, by=country, colour=continent)) + 
  geom_line() + 
  facet_grid(~continent)

ggplot(data = gapminder, 
       aes(x=year, y=life_expectancy, by=country, colour=continent)) + 
  geom_line(alpha = 0.4, size = 1) + 
  facet_grid(~continent)

# geom_boxplot()   ----

ggplot(ToothGrowth, aes(x=dose, y=len, group=factor(dose))) + 
  geom_boxplot(aes(fill=factor(dose))) + 
  facet_grid(supp ~ .)

ggplot(ToothGrowth, aes(x=dose, y=len, group=factor(dose))) + 
  geom_boxplot(aes(fill=factor(dose))) + 
  facet_grid(.~supp)

# geom_histogram() ----

ggplot(diamonds, aes(x=price)) + 
  geom_histogram(bins = 30) + 
  facet_grid(~cut)

ggplot(diamonds, aes(x=price, fill=cut)) + 
  geom_histogram(bins = 30, alpha = 0.7) + 
  facet_grid(~cut, scales = "free")

# geom_density()

ggplot(diamonds, aes(x=price, fill=cut)) + 
  geom_density(alpha = 0.7) + 
  facet_grid(~cut, scales = "free")

# geom_bar()       ----

ggplot(diamonds, aes(cut)) + 
  geom_bar() + 
  facet_grid(~color)



