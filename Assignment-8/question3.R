for(i in 2:5){
	u<-runif(10^i)
	sample<-exp(u^(0.5))
	y<-u^.5
	mean_y<-mean(y)
	variance_y<-var(y)
	mean<-mean(sample)
	variance<-var(sample)
	alpha<-.05
	value<-1-alpha/2
	c<-(-cov(sample,y))/variance_y
	variance_control_variates<-var(sample+c*(y-mean_y))
	mean_control_variates<-mean(sample+c*(y-mean_y))
	left<-mean_control_variates-(variance_control_variates^.5)*(qnorm(value,0,1))/(10^(i/2))
	right<-mean_control_variates+(variance_control_variates^.5)*(qnorm(value,0,1))/(10^(i/2))
	cat("95% confidence interval for M = ",10^i," is (",left,",",right,") .\n")
	cat("Variance Reduction Percentage: ",(variance - variance_control_variates)*100/(variance),"\n")
}

