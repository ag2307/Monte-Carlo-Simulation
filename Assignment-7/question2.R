sample<-c()
pmf<-c()
pmf_data<-c()
mean<-2
x<-c()
count<-50
for(i in 1:count){
	j<-0
	p<-exp(-1*mean)
	F<-p
	while(1){
		u<-runif(1)
		if(u<F){
			sample[i]<-j
			break
		}
		p<-(mean*p)/(j+1)
		F<-F+p
		j<-j+1
	}
	pmf[i]<-(exp(-1*mean)*(mean**(i-1)))/factorial(i-1)
	pmf_data[i]<-(exp(-1*mean)*(mean**(sample[i])))/factorial(sample[i])
	x[i]<-i
}
png("question2-pmf-perfect.png")
plot(x,pmf,col="red",main="pmf-perfect")
png("question2-pmf-based_on_data.png")
plot(sample,pmf_data,col="red",main="pmf-based_on_data")
png("question2-cdf.png")
plot(ecdf(sample),col="red")
cat("Mean is: ",mean(sample),"\n")
cat("Variance is: ",var(sample),"\n")