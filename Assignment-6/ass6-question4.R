square<-function(u1,u2){
	return (u1**2+u2**2)
}
intermediate<-function(x){
	return (sqrt(-2*log(x)/x))
}
count<-1000
ap<-c()
for(k in 1:20){
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
	samples1[i]<-u1*y
	samples2[i]<-u2*y
	i<-i+1
	count<-count-2
	if (count==0){
		break
	}
}
count<-count+1000
ap[k]<-(((i-1)/j)/(1-pi/4))
}
samples<-c(samples1,samples2)
k<-1
test<-c()
constant<-1000
for (k in 1:20){
	test[k]<-constant*k
}
cat("Acceptance Probability: ",(i-1)/j,"\n")	
plot(test,ap,type="l",col="red")		