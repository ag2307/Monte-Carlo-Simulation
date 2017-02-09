count<-0
mean<-0
max<- -2147483646
min<- 2147483646
vector<-c()
while(1){
	u1<-runif(1)
	u2<-runif(1)
	if(u2<=(256*u1*(1-u1)**3)/27){
		cat("Sample Values are: ",u1)
		cat("\n")
		count<-count+1
		vector[count]<-u1
		mean<-(mean+u1)
		if(max<=u1)
			max<-u1
		if(min>=u1)
			min<-u1
	}
	if(count==5000)
		break
}
png("question3.png")
hist(vector, breaks=50 , col="light cyan",plot=TRUE)
cat("Mean: ",mean/5000)
cat("\nMaximum: ",max)
cat("\nMinimum: ",min)
cat("\n")
