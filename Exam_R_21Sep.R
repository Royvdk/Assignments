install.packages("tidyverse",dependencies=TRUE)
library(tidyverse)


mydata <- read.csv("C:/Users/Roy van den Kieboom/Downloads/Medicaid.csv")
str(mydata)
head(mydata)

New_Recipients <- as.numeric(as.character(mydata$Recipients))
New_Total_costs <- as.numeric(as.character(mydata$Total_costs))
str(mydata)
head(mydata)


mydata <- transform(mydata, Cost_per_Recipient = New_Recipients/New_Total_costs)                                             

plot(mydata$Year,mydata$Cost_per_Recipient, type="l", xlab="year", ylab="cost per enrollee", col="red", lwd=3)
