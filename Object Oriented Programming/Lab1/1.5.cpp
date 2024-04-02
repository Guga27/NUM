#include <iostream>
using namespace std;
inline func(int n, int a[]){
    int count = 0;
    for(int i = 0; n > 0; i++){
        a[i] = n % 10;
        n = n / 10;
        count++;
    }
    return count;
    
}
int main(){
    int n, a[100];
    cout << "Natural toog oruul: ";
    cin >> n;
    int count = func(n, a);
    cout << "Orongiin too: " << count;
    cout << "\nTsifruud ni: ";
    for (int i = 0; i < count; i++) 
        cout << a[i] << ",";
}



