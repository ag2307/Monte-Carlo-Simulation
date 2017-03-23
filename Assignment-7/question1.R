sample<-c()
pmf<-c()
pmf_data<-c()
p<-runif(1)
x<-c()
cat("Randomly generated probabilities \"p\" and \"q\" are: ",p," ",1-p," respectively !!\n")
q<-1-p
count<-50
for(i in 1:count){
	u<-runif(1)
	sample[i]<-floor(log(u)/log(q))+1
	pmf[i]<-q**(i-1)-q**i
	pmf_data[i]<-p*(q**(sample[i]-1))
	x[i]<-i
}
png("question1-pmf--perfect.png")
plot(x,pmf,col="red",main=paste("p = ", toString(p)))
png("question1-pmf-based_on_data.png")
plot(sample,pmf_data,col="green",main=paste("p = ", toString(p)))
cat("Mean is: ",mean(sample),"\n")
cat("Variance is: ",var(sample),"\n")
