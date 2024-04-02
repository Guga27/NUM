#include<iostream>
using namespace std;
inline tegsh(int x[], int n){
	int s = 0;
	for(int i = 0; i < n; i++)
		if(x[i] % 2 == 0) 
			s++;
    return s;
}

int main(){
	int i, n; 
	cout << "Heden too oruulah we: ";  
	cin >> n;
	int a[n];
	cout << "Toonuudiig oruulna uu: ";  
	for(i = 0; i < n; i++)  
		cin >> a[i];
	cout << "Niit tegsh too ni = " << tegsh(a, n);
	return 0;
}



