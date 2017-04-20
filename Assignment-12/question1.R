lcg<-function(a,x,m,count){
	u<-c()
	for(i in 1:count){
		u[i]=x/m
		x=(x*a)
		x=x%%m
	}
	return(u)
}
vanDerCorput<-function(n,base){
	sum=0
	temp=1/base
	while(n!=0){
		sum=sum+(n%%base)*temp
		n=n%/%base
		temp=temp/base
	}
	return(sum)
}
count<-25
cat("Number of sequence elements= ",count,"\n")
sample<-c()
for(i in 1:count){
	sample[i]<-vanDerCorput(i,2)
	cat(sample[i],"\n")
}
count<-1000
sample<-c()
sample1<-c()
png(paste("question1_",count,".png",sep=""))
for(i in 1:count){
	sample[i]<-vanDerCorput(i,2)
	if(i>1){
		sample1[i-1]<-sample[i]
	}
}
sample1[count]<-vanDerCorput(count+1,2)
plot(sample,sample1)
counts<-c(100,100000)
x<-23
a<-16807
m<-2^31-1
for(count in counts){
	sample<-c()
	for(i in 1:count){
		sample[i]<-vanDerCorput(i,2)
	}
	sample1<-lcg(a,x,m,count)
	png(paste("question1_",toString(count),".png",sep=""))
	par(mfrow=c(1,2))
	hist(sample,main="Van Der Corput",breaks=20,col="blue",ylab="Frequency",)
	hist(sample1,main="LCG",breaks=20,col="red",ylab="Frequency",)
}
