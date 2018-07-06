#include <iostream>
#include <cstdio>
#include <map>

using namespace std;

int main(){
	long long index, price, n, m, income = 0;
	map<long long,long long> element;
	cin >> n;
	for(int i = 0; i < n; i++){
		cin >> index >> price;
		element[index] = price;
	}
	cin >> m;
	for(int i = 0; i < m; i++){
		cin >> index >> price;
		if(price > element[index]) element[index] = price;
	}
	map<long long, long long>::iterator it;
	for(it=element.begin();it != element.end();it++){
		income = income + it->second;
	}
	cout << income << endl;
	return 0;
}
