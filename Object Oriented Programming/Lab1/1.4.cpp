#include <iostream>
using namespace std;
inline avg(int a[], int n){
    int count = 0;
    int sum = 0;
    for(int i = 0; i < n; i++){
        if(a[i] % 2 != 0){
            count++;
            sum += a[i];
        }
    }
    return (float)sum / count;
}

int main(){
    int n;
    cout << "Heden too oruulah we: ";
    cin>> n;
    int a[n];
	cout << "Toonuudiig oruulna uu: ";  
	for(int i = 0; i < n; i++)  
		cin >> a[i];
    cout << "Dundaj ni = "<< avg(a, n);
}







