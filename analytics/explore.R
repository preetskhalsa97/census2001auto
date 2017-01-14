df = read.csv("../finalCSV/all.csv", stringsAsFactors = TRUE)
df$X.2 = NULL
df$X.1 = NULL
df$X = NULL
df$Growth..1991...2001. = as.numeric(as.character(df$Growth..1991...2001.))

library(fmsb)

get_radar_chart = function(){
  states = aggregate(cbind(Sex.ratio..females.per.1000.males., Growth..1991...2001., Household.size..per.household., Persons..literacy.rate)  ~ State, data = df, FUN = mean) 
  
  max = c(1000, 100, 7, 100) 
  min = c(min(states$Sex.ratio..females.per.1000.males.), min(states$Growth..1991...2001.), 0, min(states$Persons..literacy.rate)) #Debatable -- For better differentiability 
  
  par(mfrow=c(7, 5))
  par(mar=c(1,1,1,1))
  
  for(i in 1:nrow(states)){
    radarchart(rbind(max,min,states[i,2:5]), axistype=2 , pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 , cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,2000,5), cglwd=0.8, vlcex=0.6, title=as.character(states$State[i]))
  }
  
}

