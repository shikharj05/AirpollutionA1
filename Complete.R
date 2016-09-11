
complete<-function(directory,id=1:332){
df<-list.files(directory)
df<-df[id]
res<-data.frame()
old.dir<-getwd()
setwd(directory)
for(file in df){
  cc<-complete.cases(read.csv(file))
  
  df2<-data.frame(id=file,nobs=sum(cc))
  res<-rbind(res,df2)
  }
setwd(old.dir)
res
}