count<-0
gInv<-function(u){
	if(u<1/2){
		return (log(2*u))
	}
	else{
		return (-1*log(2*(1-u)))
	}
}
c=sqrt(2*exp(1)/pi)
f<-function(x){
	return (sqrt(1/(2*pi))*exp(-1*x*x/2))
}
g<-function(x){
	return ((1/2)*exp(-1*abs(x)))
}
vector<-c()
total<-0
while(1){
u1<-runif(1)
u2<-runif(1)
x<-gInv(u1)
if(u2<=(f(x)/(c*g(x)))) {
cat("Sample Values are: ",x)
cat("\n")
count<-count+1
vector[count]<-x
}
total<-total+1
if(count==1000)
break
}
cat("\nSimulated Acceptance: ",count/total)
cat("\nTheoretical Acceptance: ",1/c)
cat("\nMean: ",mean(vector))
cat("\nVariance: ",var(vector))
png("question1.png")
hist(vector, breaks=50 , col="light cyan",plot=TRUE)
cat("\n")