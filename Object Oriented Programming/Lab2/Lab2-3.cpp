#include<iostream>
using namespace std;
int main(){
	int a = 125;   
	int *p = &a;   
	cout << p;     
	cout << "\n" << *p;  
	p++; 
	cout << "\n" << p; 
	cout << "\n" << *p; 
}


//int turliin ankhnii utgatai a huwisagch zarlaj baina.
//p gesen haygan huwisagchid a iin haygiig hadgalj baina.
//p-g hadgalsan sanah oin haygiig hewlej baina.
//p-giin haygt hadgalsan utgiig hewlej baina.
// haygan huwisagchaa nemegdulj baina.
//nemegdsen haygan huwisagchiin haygiig hewlej baina.
//nemegdsen haygan huwisagchid hadgalagdah utgiig hewlej baina.
