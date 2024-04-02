#include<iostream>
using namespace std;
#define max(a, b, c) ( (a > b && a > c) ? a : ( b > c) ? b : c )
int main(){
	int a, b, c;
	cout << "3 toog oruulna uu: " << endl;
	cin >> a >> b >> c;
	cout << "Hamgiin ih too ni: " << max(a, b, c) << endl;
}



