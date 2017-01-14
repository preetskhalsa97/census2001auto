array=c("AN","Andhra","ArunachalPradesh","Assam","Bihar","CG","Chandigarh","D_D","Delhi","D_N_H","Goa","Gujarat","Haryana","HP","Jharkhand","JK","Karnataka","Kerala","Lakshdweep","Maharashtra","Manipur","Meghalya","Mizoram","MP","Nagaland","Orrisa","Pondicherry","Punjab","Rajasthan","Sikkim","TN","Tripura","UP","Uttranchal","WB")
string=paste(array[1],".csv",sep="")
data1=read.csv(string)
for (i in 2:length(array)){
	string=paste(array[i],".csv",sep="")
	data2=read.csv(string)
	final=rbind(data1,data2)
	data1=final
}
write.csv(final,"all.csv")