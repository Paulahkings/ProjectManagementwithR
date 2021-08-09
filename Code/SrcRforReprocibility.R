#R for reproducible scienctific analysis
ls()
rm(m)
ls()
installed.packages()

mass <- 47.5
mass <- mass*2.3
mass


age <- 122
age <- age-20
age

#comparison
mass == age

mass != age
mass > age

#deleting variables from the environment
rm(mass)
rm(age)
rm(my_studies)
rm(n,x)

#installing and loading packages
install.packages("gapminder")
install.packages("plyr")
install.packages("ggplot2")

#alternatively
#install.packages(c("ggplot2","plyr","gapminder"))

library(gapminder)
library(plyr)
library(ggplot2)
#project management with Rstudio
#best practices for project organization

