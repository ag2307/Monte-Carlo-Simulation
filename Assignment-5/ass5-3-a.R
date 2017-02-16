cdf<-c(0.05,0.30,0.75,0.90,1.0)
values<-c(1,2,3,4,5)
samples<-c()
count<-0
while(count!=10){
	u<-runif(1)
	for(i in 1:5){
		if(u<=cdf[i]){
			count<-count+1
			samples[count]=values[i]
			cat("\nSample Values are: ",samples[count])
			break
		}
	}
}
cat("\nMean: ",mean(samples))
cat("\nVariance: ",var(samples))
cat("\n")