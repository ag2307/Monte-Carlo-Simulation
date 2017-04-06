paths<-10
count<-5000
interval<-5/count
sigma<-function(x){
	return (0.012+0.0138*x+0.00125*x*x)
}
mean1<-function(x){
	return (0.0325-0.05*x)
}
main_sample<-matrix(0,nrow=(count+1), ncol=paths)
png("question3.png")
for(i in 1:paths){
	main_sample[1,i]<-5
	z_sample<-rnorm(count+1)
	for(j in 2:(count+1)){
		main_sample[j,i]<-main_sample[j-1,i]+mean1((j-2)*(interval))*interval+((interval)^.5)*z_sample[j]*sigma((j-2)*interval)
	}	
}
cat("E[W(2)] = ",mean(main_sample[2001,]),"\n")
cat("E[W(5)] = ",mean(main_sample[5001,]),"\n")
matplot(main_sample,xlab="Time",ylab="Path")