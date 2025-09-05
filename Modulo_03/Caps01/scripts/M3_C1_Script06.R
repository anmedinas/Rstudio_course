library("dplyr")
library("openxlsx")
library("readxl")

iris <- read_excel("dataset/iris.xls")
iris_resumen <- 
  iris %>% dplyr::rename(
    Sepal.Length = `Sepal Length (cm)` ,
    Sepal.Width = `Sepal Width (cm)`,
    Petal.Length = `Petal Length (cm)`,
    Petal.Width = `Petal Width (cm)`,
    Species = Class) %>% 
  dplyr::group_by(Species) %>%
  dplyr::summarise(
    n = n(),
    Sepal.Mean = mean(Sepal.Width), 
    Sepal.Sd = sd(Sepal.Width) )


write.xlsx(iris_resumen, "Iris_Resumen.xlsx")
