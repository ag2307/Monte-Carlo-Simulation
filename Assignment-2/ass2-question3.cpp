#include <math.h>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <algorithm>
using namespace std;
int cnt[21]={0};
vector<float> u;
vector<int> array;
void random_number_generator(int seed,int a,int b,int m){
	int i=0,k;	
	long long int y=(a*array[i++]+b);
	int x=y%m;
	float value=(float)(x)/m;
	while(1){
		if(!(find(array.begin(),array.end(),x)!=array.end()))
			u.push_back(value);
		else
			return;
		array.push_back(x);
		float j=.05;
		for(k=1;k<=20;k++){
			if(value<j){
				cnt[k]++;
				break;
			}
			j+=.05;
		}
		y=(a*array[i++]+b);
		x=y%m;
		value=(float)(x)/m;
	}
}

int main(){
//	cnt[0]=100000;
	int x0=2;
	array.push_back(x0);
	random_number_generator(x0,1229,1,2048);
	vector<float>::iterator it;
	double j=0;
	for(it=u.begin();it<(u.end()-1);it++)
		printf("%f,%f\n",*(it),*(it+1));}