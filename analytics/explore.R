df = read.csv("../finalCSV/all.csv", stringsAsFactors = TRUE)
df$X.2 = NULL
df$X.1 = NULL
df$X = NULL
df$Growth..1991...2001. = as.numeric(as.character(df$Growth..1991...2001.))

library(fmsb)

development_radar_chart = function(){
  states = aggregate(cbind(Sex.ratio..females.per.1000.males., Growth..1991...2001., Household.size..per.household., Persons..literacy.rate)  ~ State, data = df, FUN = mean) 
  
  max = c(1000, 100, 7, 100) 
  min = c(min(states$Sex.ratio..females.per.1000.males.), min(states$Growth..1991...2001.), 0, min(states$Persons..literacy.rate)) #Debatable -- For better differentiability 
  
  par(mfrow=c(7, 5))
  par(mar=c(1,1,1,1))
  
  for(i in 1:nrow(states)){
    radarchart(rbind(max,min,states[i,2:5]), axistype=2 , pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 , cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,2000,5), cglwd=0.8, vlcex=0.6, title=as.character(states$State[i]))
  }
  
}

religion_stats = function(){
  religions = c("Buddhists", "Christians", "Hindus", "Muslims", "Sikhs", "Jains", "Religion not stated", "Others")
  for (i in religions){
    df[,i] = 0
  }
  
  for (i in 1:nrow(df)){
    rel1 = as.character(df$Religeon.1.Name[i])
    rel2 = as.character(df$Religeon.2.Name[i])
    rel3 = as.character(df$Religeon.3.Name[i])
    
    if (!is.na(rel1)){
      df[,substr(rel1, 3, nchar(rel1))][i] = df$Religeon.1.Population[i]
    }
    if (!is.na(rel2)){
      df[,substr(rel2, 3, nchar(rel2))][i] = df$Religeon.2.Population[i]
    }
    if (!is.na(rel3)){
      df[,substr(rel3, 3, nchar(rel3))][i] = df$Religeon.3.Population[i]
    }
    
  }
  
  agg_religion = aggregate(cbind(Buddhists, Christians, Hindus, Muslims, Sikhs, Jains, `Religion not stated`, Others) ~ State, data = df, FUN = sum)
  agg_religion[,c(2:9)] = 100*as.matrix(agg_religion[,c(2:9)])/rowSums(as.matrix(agg_religion[,c(2:9)]))

  max = rep(100,9)
  min = rep(0, 9)
  
  par(mfrow=c(7, 5))
  par(mar=c(1,1,1,1))
  
  for(i in 1:nrow(agg_religion)){
    radarchart(rbind(max,min,agg_religion[i,2:9]), axistype=2 , pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 , cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,2000,5), cglwd=0.8, vlcex=0.6, title=as.character(agg_religion$State[i]))
  }
  
}

top_districts_growth = function(){
  print(df[order(df$Growth..1991...2001., decreasing = TRUE)[1:10], c("District", "Growth..1991...2001.")])
  print(df[order(df$Growth..1991...2001., decreasing = FALSE)[1:10], c("District", "Growth..1991...2001.")])
}


