#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <math.h>
#include <limits.h>
#include <algorithm>
int main(){
	long long int x;
	int a,cnt[20]={0},i,k;
	double m;
	x=23;
	a=16807;
	m=pow(2,31)-1;
	int count=100000;
	float u[count],j;
	for(i=0;i<count;i++){
		u[i]=x/m;
		x=(x*a);
		x%=(long long int)m;
		
		for(k=0,j=0.05;k<20;k++){
			if(u[i]<j){
				cnt[k]++;
				break;
			}
			j+=.05;
		}
	}
	for(i=0;i<(count-1);i++){
		printf("%f %f\n",u[i],u[i+1]);
	}
	printf("\n\n\n");
	for(k=0,j=0.00;k<20;k++,j+=0.05){
		printf("%d %g-%g\n",cnt[k],j,j+0.05);
	}
}