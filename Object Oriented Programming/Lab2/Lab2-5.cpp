#include<iostream>
using namespace std;
void swap(int *a, int *b){
	int tmp;
	tmp = *a;
	*a = *b;
	*b = tmp;
}

int main(){
	int x = 0;
	int y = 1;
	int *a;
	int *b;
	cout << "First x: " << x << endl;
	cout << "First y: " << y << endl;
	a = &x;
	b = &y;
	swap(a,b);
	cout << "Second x: " << x << endl;
	cout << "Second y: " << y << endl;
}


