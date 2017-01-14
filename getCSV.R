library(readxl)
array=c("AN","Andhra","ArunachalPradesh","Assam","Bihar","CG","Chandigarh","D_D","Delhi","D_N_H","Goa","Gujarat","Haryana","HP","Jharkhand","JK","Karnataka","Kerala","Lakshdweep","Maharashtra","Manipur","Meghalya","Mizoram","MP","Nagaland","Orrisa","Pondicherry","Punjab","Rajasthan","Sikkim","TN","Tripura","UP","Uttranchal","WB")
i=1
#for (i in 1:length(array)){
  #print (getwd())
  string=paste("./",array[i],"/XL",sep="")
	setwd(string)
	file=read_excel("final.xlsx",sheet="Sheet1")
	file=cbind(State=array[i],file)
	setwd("../..")
	write.csv(file,paste(array[i],".csv",sep=""))
#}