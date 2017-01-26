"Three roots of the the equation 3*(x^2)-exp(x) are "
# Given Function

f <- function(x){3*(x^2)-exp(x)}
tolerance=1e-5

curve(3*(x^2)-exp(x), from=-2, to=4, , xlab="x", ylab="y")

# finding derivative

diff<-function(x){6*x-exp(x)}

# Function to calculate the approximate root of the given equation within the tolerance

newton<-function(f,diff,x0,tolerance){
	x1=0
	while (TRUE) {
	# Applying Newton-Raphson Method to approximate following points
	x1 = (x0 - (f(x0) / diff(x0)))
	# To check that the root is within tolerance
	if (abs(x1 - x0) < tolerance) break
	x0 = x1
	}
	return (x1)
}

# Setting initial point to start approximation. Point with higher derivative is chosen to reach a root quickly. The two integer points
# are chosen as functionchanges it's sign between them.

#3 roots

if(diff(-1)>=diff(0)){
	print(newton(f,diff,-1,tolerance))
}else
	print(newton(f,diff,0,tolerance))

if(diff(0)>=diff(1)){
	print(newton(f,diff,0,tolerance))
}else
	print(newton(f,diff,1,tolerance))

if(diff(3)>=diff(4)){
	print(newton(f,diff,3,tolerance))
}else
	print(newton(f,diff,4,tolerance))

	