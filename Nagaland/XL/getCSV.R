library(readxl)
array=c("AN","Andhra","ArunachalPradesh","Assam","Bihar","CG","Chandigarh","D_D","Delhi","D_N_H","Goa","Gujarat","Haryana","HP","Jharkhand","JK","Karnataka","Kerala","Lakshdweep","Maharashtra","Manipur","Meghalya","Mizoram","MP","Nagaland","Orrisa","Pondicherry","Punjab","Rajasthan","Sikkim","TN","Tripura","UP","Uttranchal","WB")
i=25

string=paste("./",array[i],"/XL",sep="")
file=read_excel("final.xlsx")
file=cbind(State=array[i],file)

write.csv(file,paste(array[i],".csv",sep=""))
