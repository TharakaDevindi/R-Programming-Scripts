#Data Frames - rules
#column name shouldnt be empty
#row names should be unique
#can store any type of data - numeric / factors / characters
#each column should contain same number of data items

#ex - data frames
#date format in excel - yyyy-MM-dd
empData<-data.frame(
  empId=c(1:6),
  empName=c("a","b","c","d","e","f"),
  salary=c(1000,2000,5000,4500,1500,3200),
  startDate=as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                      "2015-03-27","2020-04-01")),
  stringsAsFactors = FALSE
)
print(empData)
#to get structure of the data frame
str(empData)
#print the summary
summary(empData)
#extract specific columns
empResult<-data.frame(empData$empName,empData$salary)
print(empResult)

#create data frame using vectors
x<-c(1,2,3,4)
y<-c('a','b','c','d')
vectorSet<-data.frame(x,y)
print(vectorSet)
empData
#print specific rows
#dataFrameName[x,y] where x - rows and y - columns

empResultRows<-empData[1:3,]
print(empResultRows)
empResult2<-empData[c(1,3,5),c(2,3)]
print(empResult2)

#add new column
empData$department<-c("IT","Finance","HR","Management","Admin","HR")
print(empData)
str(empData)
#-----------------------

#How to find mean (average) median (middle) and mode (maximum number of duplicates)
#sample vector
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
#mean syntax = mean(x,trim=0,na.rm=false)
#x means the dataset
#trim is used to drop some observations from both end of the sorted vector.
#na.rm is used to remove the missing values(null) from the input vector

#finding mean value of x
mean.x<-mean(x)
print(mean.x)

#apply trim function
#trim value as 0.3
mean.x<-mean(x,trim = 0.3)
print(mean.x)
print(x)

#apply na.rm
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
print(mean(x,na.rm = TRUE))
#--------------------------

#find median
#syntax = median(x, na.rm = FALSE)
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
median.x<-median(x,na.rm = TRUE)
print(median.x)
#--------------------------

#find mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
vectorToMode <- c(2,1,2,3,6,2,3,4,1,6,6,6,2,5,6)
mode.v<-getmode(vectorToMode)
print(mode.v)

charv <- c("o","it","the","it","it")
result <- getmode(charv)
print(result)

#loops
#----------------------------------------
#repeat / while / for
  
counter<-1

repeat{
  print("Hello world")
  counter<-counter+1
  if(counter>5){
    break
  }
}

counter<-1
while (counter<=5) {
  print("hello ICBT")
  counter=counter+1
}

#for loop
x<-c(1,2,3,4,5,6)

for (myValue in x) {
  print("myValue")
}

colors<-list("red","green","yellow")

for (color in colors) {
  print(color)
}

#if / else / elif
x<-1
if(x>10){
  print("Hello world!!!")
}

if(x>10){
  print("if world!!!")
}else{
  print("else world!!!")
}

print(x)

if(x>10){
  print("hello")
}else if(x>12){
  print(2)
}else{
  print("end")
}





#-------------------------------------
#work with excel and csv
#install packages
#install.packages("xlsx",dependencies = TRUE)
#verify the installed package
any(grepl("xlsx",installed.packages()))
#load library into the workplace
library("xlsx")

#create a folder called rwork may be inside your desktop / any drive
print(getwd())
setwd("F:/icbt/Test R")

myData<-read.csv("myData.csv")
print(myData)

#analyze data
#max salary
maxSal<-max(myData$salary)
print(maxSal)
#min salary
minSal<-min(myData$salary)
print(minSal)

#person details of max salary
retunData<-subset(myData,myData$salary==max(salary))
print(retunData)

#person details of min salary
retunData<-subset(myData,myData$salary==min(salary))
print(retunData)

#people who are working in IT department
retunData<-subset(myData,myData$department=="IT")
print(retunData)

#people who are working in IT or HR
retunData<-subset(myData,myData$department=="IT" | myData$department=="HR")
print(retunData)

#date format should be in csv or excel - "yyyy-MM-dd" (right click on the column and select)
#format cells->custom->type yyyy-MM-dd. then run below query
retval <- subset(myData, as.Date(start_date) > as.Date("2014-01-01"))
print(retval) 

#and operator &
retunData<-subset(myData,myData$department=="IT" & myData$name=="Michelle")
print(retunData)
#or operator |
retunData<-subset(myData,myData$department=="IT" | myData$department=="HR")
print(retunData)



