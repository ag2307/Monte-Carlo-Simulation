for(i in 2:5){
	sample<-runif(10^i)
	sample1<-runif(10^i)
	sample1<-exp(sample^(0.5))
	sample<-(exp(sample^(0.5))+exp((1-sample)^(0.5)))/2	
	mean<-mean(sample)
	mean1<-mean(sample1)
	variance<-var(sample)
	variance1<-var(sample1)
	alpha<-.05
	value<-1-alpha/2
	left<-mean-(variance^.5)*(qnorm(value,0,1))/(10^(i/2))
	right<-mean+(variance^.5)*(qnorm(value,0,1))/(10^(i/2))
	cat("95% confidence interval for M = ",10^i," is (",left,",",right,") .\n")	
	cat("Variance Reduction Percentage: ",(variance1/2-variance)*100/(variance1/2),"\n")
}

