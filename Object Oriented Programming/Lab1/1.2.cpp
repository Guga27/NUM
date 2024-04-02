#include<iostream>
using namespace std;

int max(int x[], int n){
	int s = x[0]; 
	for(int i = 0; i < n; i++){
		if(x[i] > s) 
            s = x[i];
	}
	return s;
}

int min(int x[], int n){
	int d = x[0]; 
	for(int i = 0; i < n; i++){
		if(x[i] < d) 
            d = x[i];
	}
	return d;
}

int main(){
	int n, i, a[20];
	cout << "Heden shirheg too oruulah we: " << endl;
	cin >> n;
	cout << "Toonuudaa oruulna uu: ";
	for(i = 0; i < n; i++)
		cin >> a[i];
		
	cout << "Hamgiin baga = " << min(a, n);  
	cout << "\nHamgiin ih = " << max(a, n);  
	return 0;		
}
