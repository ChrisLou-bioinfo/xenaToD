xenaToD<-function(data=xena){
  index<-duplicated(data$Ensembl_ID)
  xena<-data[!index,]
  rownames(xena)<-xena$Ensembl_ID
  xena<-xena[,-1]
  xena<-(2^xena) - 1
  xenacounts<-apply(xena,2,function(x){as.integer(x)})
  rownames(xenacounts)<-rownames(xena)
  return(xenacounts)
}
