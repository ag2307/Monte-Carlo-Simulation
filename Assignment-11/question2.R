paths<-1000
count<-5000
interval<-5/count
sd<-c(0.3,0.4)
mean<-c(-0.06,0.06)
exp_mean<-function(s0,mean){
	return(s0*exp(mean*5))
}
exp_variance<-function(s0,mean,sd){
	return((s0^2)*exp(2*mean*5)*(exp(5*sd^2)-1))
}
for(x in sd){
for(y in mean){
main_sample<-matrix(0,nrow=(count+1), ncol=paths)
for(i in 1:paths){
main_sample[1,i]<-5
for(j in 2:(count+1)){
main_sample[j,i]<-main_sample[j-1,i]*exp((y-(x^2)/2)*interval+x*rnorm(1)*(interval)^.5)
}
}
cat("Mean is: ",y,"\n")
cat("Variance is: ",x,"\n")
cat("Theoretical Expectation of S(5): ",exp_mean(5,y),"\n")
cat("Observed Expectation of S(5): ",mean(main_sample[5001,]),"\n")
cat("Theoretical Variance of S(5): ",exp_variance(5,y,x),"\n")
cat("Observed Variance of S(5): ",var(main_sample[5001,]),"\n")
}	
cat("\n")																			
}
