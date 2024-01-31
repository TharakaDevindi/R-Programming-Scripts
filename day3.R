
#create a folder called rwork may be inside your desktop / any drive
print(getwd())
setwd("D:/rwork")

myData<-read.csv("mydata.csv")
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

#and - & and or- |
#people who are working in IT or HR
retunData<-subset(myData,myData$department=="IT" | myData$department=="HR")
print(retunData)

#people who are working in HR department and salary>4000
retunData<-subset(myData,myData$department=="HR" & myData$salary >4000)
print(retunData)


#date format should be in csv or excel - "yyyy-MM-dd" (right click on the column and select)
#format cells->custom->type yyyy-MM-dd. then run below query

#people who hav joined after 2014-01-01
retval <- subset(myData, as.Date(myData$startDate) > as.Date("2014-01-01"))
print(retval) 

#and operator &
retunData<-subset(myData,myData$department=="IT" & myData$name=="Michelle")
print(retunData)
#or operator |
retunData<-subset(myData,myData$department=="IT" | myData$department=="HR")
print(retunData)