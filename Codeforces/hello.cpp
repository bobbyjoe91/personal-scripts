#include <iostream>
#include <cstdio>

using namespace std;

int main(){
	string temp="";
	string text;
	cin >> text;
	if(text.length() < 5){
		cout << "NO\n";
	}
	else if(text == "hello") cout << "YES\n";
	else{
		for(unsigned i=0; i<text.length(); i++){
			if((text[i] == 'h' && temp == "") || (text[i] == 'e' && temp == "h") || (text[i] == 'l' && (temp == "he" || temp == "hel")) || (text[i] == 'o' && temp == "hell")){
				temp = temp+text[i];
			}
		}
		if(temp == "hello") cout << "YES\n";
		else cout << "NO\n";
	}
	return 0;
}
