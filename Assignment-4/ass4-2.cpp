#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <math.h>
#include <limits.h>
#include <algorithm>
int main(){
	long long int x;
	int a,i,k;
	double m,sample[25000],mean,maximum=INT_MIN ,minimum=INT_MAX,main_sample[5000];
	x=23;
	a=16807;
	m=44947;
	int count=25000;
	float u,j;
	for(i=0;i<count;i++){
		u=x/m;
		x=(x*a);
		x%=(long long int)m;
		sample[i]=((-1*log(1-u))/5);
	}	
	for(i=0;i<5000;i++){
		main_sample[i]=sample[i]+sample[i+5000]+sample[i+10000]+sample[i+15000]+sample[i+20000];
		
		if(main_sample[i]>maximum)
			maximum=main_sample[i];
		if(main_sample[i]<minimum)
			minimum=main_sample[i];
		mean+=(main_sample[i]/5000);
	}	
	int frequency[(int)ceil(maximum*10)]={0};
	for(i=0;i<5000;i++){
		frequency[(int)ceil(main_sample[i]*10)-1]++;
	}
	for(i=0;i<(int)ceil(maximum*10);i++){
		printf("%d %d\n",i+1,frequency[i]);
	}
	printf("Mean is : %lf\n",mean);
	printf("Maximum is :%lf\n",maximum);
	printf("Minimum is :%lf\n",minimum);
}	