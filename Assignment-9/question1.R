library(MASS)	
x2<-c()
count<-1000
a<- c(-0.25,0,0.25)
for(i in a){
	sigma<-matrix(c(1,2*i,2*i,4),nrow=2)
	mean<-matrix(c(5,8),nrow=2)
	z1<-rnorm(count)
	z2<-rnorm(count)
	x1<-mean[1,1]+(sigma[1,1]^.5)*z1
	x2<-mean[2,1]+(i*sigma[2,2]^.5)*z1+(((1-(i^2))^.5)*(sigma[2,2]^.5))*z2
	mean_final<-matrix(c(mean(x1),mean(x2)),nrow=2)
	sigma_final<-matrix(c(var(x1),cov(x1,x2),cov(x1,x2),var(x2)),nrow=2)
	cat("\nMean Matrix is: \n")
	cat(mean_final[1,],"\n")
	cat(mean_final[2,],"\n")
	cat("\nSigma Matrix is: \n")
	cat(sigma_final[1,],"\n")
	cat(sigma_final[2,],"\n")	
	z<-kde2d(x1,x2)
	png(paste("question1-a=",toString(i),".png",sep=""))
	filled.contour(z)	
}
