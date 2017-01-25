#include <math.h>
#include <iostream>
#include <stdlib.h>
#include <vector>
#include <bits/stdc++.h>
using namespace std;
	vector<int> array;
int random_number_generator(int a,int b,int m){
	int i=0,cnt=1;
	int value=(a*array[i++]+b)%m;
	while(!(find(array.begin(),array.end(),value)!=array.end())) {
		array.push_back(value);
		value=(a*array[i++]+b)%m;
		cnt++;
	}
	array.push_back(value);
	cnt++;

	return (cnt-1);
}

int main(){
	int x0;
	x0=rand()%10;
	array.push_back(x0);
	int cnt=random_number_generator(6,0,11);
	vector<int>::iterator i;
	for(i=array.begin();cnt--;i++){
		cout<<(*i)<<endl;}
}
