#include <iostream>
#include <cstdio>

using namespace std;

int main(){
	int line[100];
	int n;
	cin >> n;
	int i, height, i_min = n-1, i_max = 0;
	for(i = 0; i < n; i++){
		cin >> height;
		line[i] = height;
	}
	int max = line[0], min = line[n-1];
	for(i = 0; i < n; i++){
		if(line[n-1-i] >= max){
			max = line[n-1-i];
			i_max = n-1-i;
		}
		if(line[i] <= min){
			min = line[i];
			i_min = i;
		}
	}
	if(i_max > i_min) cout << i_max-1+(n-1)-i_min << endl;
	else cout << i_max+(n-1)-i_min << endl;
}
