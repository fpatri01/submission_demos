#libraries I typically use
install.packages("tidyverse")
library(lubridate)
library(tibble)
library(tidyverse)
library(forcats)
library(dplyr)
library(ggplot2)

#save a numerical value
y <- 5+5

#The answer should print 10
print(y)

#save a list 
x <- c(1,2,4,5,7,7,8)
print(x)

#build an array using dataframes
df <- data.frame(x,x,x,x,x,x,x)
#creates a 7x7 array
print(df)
#changes the values of the first column
df$x <- c(5,3,6,7,7,2,1)
#____________________________________________
#Now let's try supervised learning with the USArrests
#first let's have a look at the data
#no. columns, rows, and the first 6 observations
ncol(USArrests)
nrow(USArrests)
head(USArrests, 6)
rowname(USArrests)
colnames(USArrests)
#For background on the data and units:
#help(USArrests)
#boox plot to see the spread of the data
ggplot(data = USArrests,
       aes(x=Murder, y=Rape)
)+ geom_point()
#time to go play melee 9:11 PM Valentine's Day!