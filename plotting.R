#libraries I typically use
install.packages("tidyverse")
library(lubridate)
library(tibble)
library(tidyverse)
library(forcats)
library(dplyr)
library(ggplot2)

#save a numerical value
q <- 5+5

#The answer should print 10
print(q)

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
rownames(USArrests)
colnames(USArrests)
#For background on the data and units:
#help(USArrests)
#box plot to see the spread of the data
arrests <- ggplot(data = USArrests,
       aes(x=UrbanPop, y=Rape)
)+ geom_point()+geom_abline()
print(arrests)
#time to go play melee 9:11 PM Valentine's Day!
#let's see if we can make a line of best fit for the data
#Predict rapes based on urban population
is.matrix(USArrests)
x_observed <- matrix(c(replicate(50,1), USArrests$UrbanPop), 50, 2)
y_observed <- matrix(USArrests$Rape, 50, 1)

#solve for b1 and b0 in y = b0+b1x
b_predicted <- solve(t(x_observed)%*%x_observed)%*%t(x_observed)%*%y_observed
x <- c(1:100) %>%
y <- b_predicted[1,1]*x+b_predicted[2,1]
arrest_data <- tibble(x,y)
predicted_arrests <- ggplot(data=arrest_data,
       mapping = aes(x="UrbanPop",y="Arrests"))+
  geom_line()
print(predicted_arrests)



####show both on one graph
plot(USArrests$UrbanPop, USArrests$Rape)
xlim(0,100)
ylim(0,max(USArrests$Rape))
lines(x=USArrests$UrbanPop, y=b_predicted[1,1]*USArrests$UrbanPop+b_predicted[2,1],
      col="blue",
      lwd=2)
