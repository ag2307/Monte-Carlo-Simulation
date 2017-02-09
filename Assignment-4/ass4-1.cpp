#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <math.h>
#include <limits.h>
#include <algorithm>
int main(){
	long long int x;
	int a,i,k;
	double m,sample[5000],mean,maximum=INT_MIN ,minimum=INT_MAX;
	x=23;
	a=16807;
	m=44947;
	int count=5000;
	float u,j;
	for(i=0;i<count;i++){
		u=x/m;
		x=(x*a);
		x%=(long long int)m;
		sample[i]=-5*log(1-u);
		mean+=(sample[i]/count);
		if(sample[i]>maximum)
			maximum=sample[i];
		if(sample[i]<minimum)
			minimum=sample[i];
	}	
	int frequency[(int)ceil(maximum)]={0};
	for(i=0;i<5000;i++){
		frequency[(int)ceil(sample[i])-1]++;
	}
	for(i=0;i<(int)ceil(maximum);i++){
		printf("%d %d\n",i+1,frequency[i]);
	}
	printf("Mean is : %lf\n",mean);
	printf("Maximum is :%lf\n",maximum);
	printf("Minimum is :%lf\n",minimum);

}