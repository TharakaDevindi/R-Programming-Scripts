#download r using - https://cran.r-project.org/bin/windows/base/
#install r
#then open rstudio
#clear console - Ctrl+L
#to run a code line - Ctrl+Enter
#---------------------------
print("Hello world")
print(1+4)

#Data Types - Vectors / Lists /Matrix / Arrays / Factors and Data Frames

#Vectors
#create vectors using c() function
#numeric, character, logical vectors

#create a vector
myFirstVector<-c("Red","Blue","Green","Black")
myfirstvector<-c("yellow","light blue","Green","Black")
print(myfirstvector)
myNumVector<-c(1,2,3)
print(myNumVector)

#List
myList<-list("red",1,2,2.5,c(3,4,5),"A")
print(myList)

#Matrices
#number of columns and rows, logical attr = byrow TRUE / FALSE

#create a matrix
myMatrix<-matrix(c('a','b','c','d','e','f','g','h'),nrow = 2,ncol = 4,byrow = TRUE)
print(myMatrix)

#Array
myArray<-array(c('A','B','C'),dim = c(4,3,2))
print(myArray)

#Data frames
myData<-data.frame(
  studentNo=c("STU001","STU002","STU003"),
  studentName=c('A','B','C'),
  Marks=c(96,45,74)
)
print(myData)
#get specific column inside a dataframe
myData$studentName

#find the variables inside the program
print(ls())

#remove a variable
rm(x)
print(ls())

test<-1
print(ls())
rm(test)
#---------------------------------------

#Decision Making - if / if else /else if
#simple if
x<-10
if(x<5){
  print("x is less than 5")
  }

#if else
print(x)
if(x<5){
  print("x less than 5")
}else{
  print("x is not less than 5")
}

#else if
x<-10
if(x<5){
  print("x less than 5")
}else if(x<8){
  print("x is not less than 8")
}else if(x<9){
  print("x is not less than 9")
}else{
  print("x is some other number")
}

#loops - while / for / repeat

#repeat loop
count<-1
repeat{
  print("Hello")
  count<-count+1
  if(count>6){
    break
  }
}

#while loop

count<-1
while(count<6){
  print("hello world")
  count<-count+1
}

#for loop
L<-LETTERS[1:10]
for(x in L){
  print(x)
}

myNumbers<-c(1,2,3,4,5,6,7,8)
for(number in myNumbers){
  print(number)
}












