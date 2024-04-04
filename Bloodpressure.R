#Download and read in the bloodPressure.RDS file
#each row is a person
#blood pressure is measure with two values: systolic and diastolic
#each persons blood pressure was measured every day for a month
#reshape the data to only have 4 columns: person, date, systolic/diastolic, and the value
#fix the date to be in the nice format for R
#calculate the mean diastolic and the mean systolic by the days of the week

path <- 'C:/Users/88017/Downloads'
# my path will be my own, where i saved it

list.files(path)

db <- readRDS (file.path(path, 'bloodPressure.RDS'))

head(db)


d2<- reshape (data=db,
              direction='long',
              varying= c('systolic', 'diastolic'), #wide col names
              v.names= 'num',#new col names for the data under the wide names
              timevar = 'group',# new long col name for the wide out
              times = c('systolic', 'diastolic')
head(d2)


column_names <-colnames(db)


lapply (db, str)


lapply (db, head, n=2)

