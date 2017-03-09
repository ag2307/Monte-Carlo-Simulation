radius<-function(u){
	return (-2*log(u))
}
arg<-function(u){
	return (2*pi*u)
}
count<-10000

samples1<-c()
samples2<-c()
for(i in 1:count/2){
	u1<-runif(1)
	u2<-runif(1)
	samples1[i]<-sqrt(radius(u1))*cos(arg(u2))
	samples2[i]<-sqrt(radius(u1))*sin(arg(u2))
}
samples<-c(samples1,samples2)
cat("Mean: ",mean(samples))
cat("\nVariance: ",var(samples),"\n")
png("question1-100-muller.png")
hist(samples, breaks=50 ,col="light cyan",plot=TRUE)