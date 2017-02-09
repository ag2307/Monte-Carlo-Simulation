mean<-0
max<- -2147483646
min<- 2147483646
vector<-c()
for(i in 1:5000){
	u<-runif(1)
	sample<- -5*log(1-u)
	vector[i]<-sample
	cat("Sample Values are: ",sample)
	cat("\n")
	mean<-mean+sample
	if(max<=sample)
		max<-sample
	if(min>=sample)
		min<-sample
}
png("question1.png")
hist(vector, breaks=50 , col="light cyan",plot=TRUE)
cat("Mean: ",mean/5000)
cat("\nMaximum: ",max)
cat("\nMinimum: ",min)
cat("\n") 