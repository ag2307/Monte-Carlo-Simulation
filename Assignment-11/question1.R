paths<-10
count<-5000
interval<-5/count
sd<-c(0.3,0.4)
mean<-c(-0.06,0.06)

for(x in sd){
for(y in mean){
main_sample<-matrix(0,nrow=(count+1), ncol=paths)
for(i in 1:paths){
main_sample[1,i]<-5
for(j in 2:(count+1)){
main_sample[j,i]<-main_sample[j-1,i]*exp((y-(x^2)/2)*interval+x*rnorm(1)*(interval)^.5)
}
}
string<-paste("question1-mean=",toString(y),"variance=",toString(x^2),".png",sep="")
png(string)
matplot(main_sample,xlab="Time",ylab="Path")
}																				
}
