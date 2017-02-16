pdf<-c(0.05,0.25,0.45,0.15,0.10)
values<-c(1,2,3,4,5)
samples<-c()
N<-5
count<-0
max<-0
gInv<-function(u){
	return(floor(N*u)+1)
}
for(i in 1:N){
	if(max<=(pdf[i]*N)) {
		max<-pdf[i]*N
	}
}
f<-function(x){
	return (pdf[x])
}
g<-function(){
	return (1/N)
}
while(1){
u1<-runif(1)
u2<-runif(1)
x<-gInv(u1)
if(u2<=(f(x)/(max*g()))) {
cat("Sample Values are: ",x)
cat("\n")
count<-count+1
samples[count]<-x
}
if(count==10)
break
}
cat("\nMean: ",mean(samples))
cat("\nVariance: ",var(samples))
cat("\n")