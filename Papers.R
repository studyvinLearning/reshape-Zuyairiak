#Use data(federalistPapers, package='syllogi') to get the federalist paper data
#Create a data frame that paper number, author, journal, date
#Determine the day of the week that each paper was published.
#Get the count of papers by day of the week and author
#create a new data frame that has authors as column names and dates of publication as the values

install.packages("syllogi")
library(syllogi)

data <- data(federalistPapers, package='syllogi')

dataframes <- lapply(federalistPapers, function(x) x[[1]])

combinedDataFrame <- do.call(rbind, dataframes)


###Determine the day of the week that each paper was published.

Date<- combinedDataFrame$date

library(lubridate)

day <- wday(Date, label = TRUE)

###Get the count of papers by day of the week and author

gregexpr(pattern='Tue', text = day)

daycount <-table(day)a

print(daycount)

Author <- combinedDataFrame$author

Authorcount <- table(Author)

print(Authorcount)

#create a new data frame that has authors as column names 
#and dates of publication as the values


merge(x=Date, y=Authorcount, 
      by.x,  by.y)

table(Date,Authorcount)

?table


