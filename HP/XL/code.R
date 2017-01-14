#This file inputs excel files and simply outputs them. 
#This removes commas from numbers, just adds one column ==> code will have to be edited. 

library(xlsx)
library(readxl)

#USING LIBRARIES

#test=read_excel("output01.xlsx",sheet="Page 1")
#write.xlsx(test,"test.xlsx")

#FOR LOOP

#for (year in c(2010,2011,2012,2013,2014,2015)){
 # print(paste("The year is", year))}

#for (year in 2010:2015){
 # print(paste("The year is", year))}

#https://www.r-bloggers.com/how-to-write-the-first-for-loop-in-r/

#CONVERTING INT TO STR

# x=toString(8) ==> x="8"

#CONCATINATING TWO STRINGS

#paste(string1,string2,sep="")

for (i in 1:12){
	#string==> 1-> 01, 10-> 10
	if (i<10){
		string=paste("0",toString(i),sep="")
	} else{
		string=toString(i)
	}
	test=read_excel(paste("output",string,".xlsx",sep=""),sheet="Page 1")
	write.xlsx(test,paste("test",string,".xlsx",sep=""))
}







