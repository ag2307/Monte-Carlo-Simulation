paths<-10
count<-5000
interval<-5/count
sd<-0.3
mean<-0.06
main_sample<-matrix(0,nrow=(count+1), ncol=paths)
png("question2.png")
for(i in 1:paths){
	main_sample[1,i]<-5
	z_sample<-rnorm(count+1)
	for(j in 2:(count+1)){
		main_sample[j,i]<-main_sample[j-1,i]+mean*(interval)+((interval)^.5)*z_sample[j]*sd
	}
}
cat("E[W(2)] = ",mean(main_sample[2001,]),"\n")
cat("E[W(5)] = ",mean(main_sample[5001,]),"\n")
matplot(main_sample,xlab="Time",ylab="Path")