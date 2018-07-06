#include <iostream>
#include <cstdio>

using namespace std;

int main(){
	long long N, k, mid;
	cin >> N >> k;
	if(N%2 != 0){
		mid = (N+3)/2;
	}
	else mid = (N+2)/2;
	if(k >= mid){
		cout << 2*(k-mid+1) << endl;
	}
	else cout << 2*k-1 << endl;
	return 0;
}
