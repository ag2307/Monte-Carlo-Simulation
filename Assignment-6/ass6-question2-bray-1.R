square<-function(u1,u2){
	return (u1**2+u2**2)
}
intermediate<-function(x){
	return (sqrt(-2*log(x)/x))
}
count<-10000
standard_deviation<-sqrt(5)
mean<-0
samples1<-c()
samples2<-c()
i<-1
j<-0
while(1){
	u1<-runif(1)
	u2<-runif(1)
	u1<-2*u1-1
	u2<-2*u2-1
	j<-j+1
	x<-square(u1,u2)
	if(x>1){
		next
	}
	y<-intermediate(x)
	samples1[i]<-u1*y*standard_deviation+mean
	samples2[i]<-u2*y*standard_deviation+mean
	i<-i+1
	count<-count-2
	if (count==0){
		break
	}
}
samples<-c(samples1,samples2)
samples<-sort(samples)
cat("Mean is: ",mean(samples),"\n")
cat("Acceptance Probability: ",(i-1)/j,"\n")	
empirical_samples<-ecdf(samples)
png("Empirical(green).png")
plot(empirical_samples,col="green")
#par(new=TRUE)
png("Theoretical(red).png")
theoretical_samples<-pnorm(samples)
plot(theoretical_samples,col="red")