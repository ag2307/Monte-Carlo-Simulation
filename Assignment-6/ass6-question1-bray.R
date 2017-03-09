square<-function(u1,u2){
	return (u1**2+u2**2)
}
intermediate<-function(x){
	return (sqrt(-2*log(x)/x))
}
count<-10000

samples1<-c()
samples2<-c()
i<-1
while(1){
	u1<-runif(1)
	u2<-runif(1)
	u1<-2*u1-1
	u2<-2*u2-1
	x<-square(u1,u2)
	if(x>1){
		next
	}
	y<-intermediate(x)
	samples1[i]<-u1*y
	samples2[i]<-u2*y
	i<-i+1
	count<-count-2
	if (count==0){
		break
	}
}
samples<-c(samples1,samples2)
cat("Mean: ",mean(samples))
cat("\nVariance: ",var(samples),"\n")
png("question1-10000-bray.png")
hist(samples, breaks=50 ,col="light cyan",plot=TRUE)		