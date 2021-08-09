#make a toy dataset in your data/ directory, called feline-data.csv
getwd()
setwd("/cloud/project/ProjectManagement/data")
cats <- data.frame(coat = c("max", "black", "daisy"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "feline-data.csv", row.names = FALSE)
cats

#load data
cats <- read.csv(file = "feline-data.csv", stringsAsFactors = TRUE)
cats

#read data
#read.table function is used for reading in tabular data stored in a text file
#read.csv where the columns of data are separated by commas
#read.delim for files where the data are separated with tabs
cats$weight
cats$coat
cats$likes_string

#add rows
anothercat<-data.frame("white","4.3","0")
newdf <- rbind(cats, anothercat)
newdf

?rbind()
