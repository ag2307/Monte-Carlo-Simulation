for(i in 2:5){
	sample<-runif(10^i)
	sample<-exp(sample^(0.5))
	mean<-mean(sample)
	variance<-var(sample)
	alpha<-.05
	value<-1-alpha/2
	left<-mean-(variance^.5)*(qnorm(value,0,1))/(10^(i/2))
	right<-mean+(variance^.5)*(qnorm(value,0,1))/(10^(i/2))
	cat("95% confidence interval for M = ",10^i," is (",left,",",right,") .\n")
}

