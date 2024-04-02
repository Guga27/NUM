#include<iostream>
using namespace std;
int main(){
	int numbers[5]; 
	int *p;  
	p = numbers;  
	*p = 10;  
	p++;   
	*p = 20;   
	p = &numbers[2]; 
	*p = 30;  
	p = numbers + 3;  
	*p = 40;  
	p = numbers; 
	*(p + 4) = 50;
	for(int n = 0; n < 5; n++)
		cout << numbers[n] << ", ";
}



int numbers[5]; //5 huwisagchtai numbers gsn husnegt zarlaj baina
	int *p;  //p gesen haygan huwisagch zarlaj baina
	p = numbers;  //p-d husnegtiin utgiig onooj baigaa buyu hamgiin ekhnii elementiin hayg onooj baina
	*p = 10;  //p haygan huwisagchid buyu husnegtiin hamgiin ekhnii elemented 10-g onooj baina
	p++;   //p hayga huwisagchiig nemegduulj hayg uurchlugdun husnegtiin 2 dahi element ruu shiljij baina
	*p = 20;   //p haygan huwisagchid buyu husnegtiin hoyrdahi elemented 20-g onooj baina
	p = &numbers[2]; //haygan operator ashigalan p-d husnegtiin 3 dahi elementiin haygiig p-d olgoosn
	*p = 30;   //husnegtiin 3 dahi elemented 30 gesen utgiig onooj baina
	p = numbers + 3;  //husnegtiin ekhnii element deer 3 iig nemj husnegtiin 4 deh elementiin haygiig p-d ugch baina
	*p = 40;  //haygan huwisagchid hadgalsan suuliin utga buyu husnegtiin 4 dahi elemented 40 gesen utgiig onooj baina
	p = numbers; //p-d husnegtiin utgiig onooj baigaa buyu hamgiin ekhnii elementiin haygiig ugch baina
	*(p + 4) = 50; //ekhnii elementiin hayg deer 4 iig nemj husnegtiin 5 dahi elemented 50-g hadgalj baina
	for(int n = 0; n < 5; n++)
		cout << numbers[n] << ", "; //husnegtiin utguudiig dawdalt ashiglan hewlej baina




