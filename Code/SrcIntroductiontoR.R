#R for reproducible scientific analysis
#installing and loading packages
install.packages("gapminder")
install.packages("plyr")
install.packages("ggplot2")

#alternatively
install.packages(c("ggplot2","plyr","gapminder"))

library(gapminder)
library(plyr)
library(ggplot2)

#check installed packages
installed.packages()

#comparison
mass == age #equality

mass != age #not equal

#deleting variables from the environment
#use Ctrl+C instead of Esc to cancel the command
rm("variable name","variable name")

