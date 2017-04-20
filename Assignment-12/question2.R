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

counts<-c(100,100000)
for(count in counts){
	sample2<-c()
	sample3<-c()
	for(i in 1:count){
		sample2[i]<-vanDerCorput(i,2)
		sample3[i]<-vanDerCorput(i,3)
	}
	png(paste("question2_",count,".png",sep=""))
	plot(sample2,sample3,xlab="Base 2",ylab="Base 3")
}
