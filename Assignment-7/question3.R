theta1<-1
theta2<-1
beta1<-2
beta2<-1.5
p<-0.4
q<-0.6
first<-function(u){
	return (((-1*log(u))**(1/beta1))/theta1)
}
second<-function(u){
	return (((-1*log(u))**(1/beta2))/theta2)
}
count<-50
sample<-c()
for(i in 1:count){
	u1<-runif(1)
	x1<-first(u1)
	x2<-second(u1)
	u2<-runif(1)
	if(u2<p)
		sample[i]<-x1
	else
		sample[i]<-x2
	cat(sample[i],"\n")
}
hist(sample)
cat("Mean is: ",mean(sample),"\n")
cat("Variance is: ",var(sample),"\n")
