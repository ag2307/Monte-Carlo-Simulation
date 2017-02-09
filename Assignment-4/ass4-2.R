mean<-0
max<- -2147483646
min<- 2147483646
vector<-c()
for(i in 1:5000){
	u1<-runif(1)
	u2<-runif(1)
	u3<-runif(1)
	u4<-runif(1)
	u5<-runif(1)
	sample1<- -1*log(1-u1)/5
	sample2<- -1*log(1-u2)/5
	sample3<- -1*log(1-u3)/5
	sample4<- -1*log(1-u4)/5
	sample5<- -1*log(1-u5)/5
	sample =sample1+sample2+sample3+sample4+sample5
	vector[i]<-sample
	cat("Sample Values are: ",sample)
	cat("\n")
	mean<-mean+sample
	if(max<=sample)
		max<-sample
	if(min>=sample)
		min<-sample
}
png("question2.png")
hist(vector, breaks=50 , col="light cyan",plot=TRUE)
cat("Mean: ",mean/5000)
cat("\nMaximum: ",max)
cat("\nMinimum: ",min)
cat("\n") 
