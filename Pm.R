Pm<-function(directory,pollutant,id=1:332){
  files<-list.files(directory)
  df<-files[id]
  df2<-data.frame()
  old.dir<-getwd()
  setwd(directory)
  for(file in df){
    data<-read.csv(file)
   df2<-rbind(df2,data)
  }
  setwd(old.dir)  
  df2<-df2[,pollutant]
  df2<-df2[!is.na(df2)]
  mean(df2)
  
}