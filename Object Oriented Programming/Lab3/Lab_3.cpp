#include<string.h>
#include<iostream>
using namespace std;

class worker{
	public:
		int id;
		char name[20];
		char position[10];
		float time;
		
		void input(void);
		void first_input(void);
		void print_info(void);
		float calc_salary(void);
		float director_salary(void);
		int add_time(float hour);
};
//anhnii utga onooh
void worker::first_input(){
	id = 0;
	strcpy(name, " ");
	strcpy(position, " ");
	time = 0;
}
//garaas utga avah
void worker::input(void){
	cout << "ID: ";
	cin >> id;
	
	cout << "Name: ";
	cin >> name;
	
	cout << "Position: ";
	cin >> position;
	
	cout << "Time: ";
	cin >> time;
}
//medeelliig delgetsleh
void worker::print_info(void){
	cout << "\n|--------------------\n";
	cout << "|Id: " << id <<"\n";
	cout << "|Full Name: " << name <<"\n";
	cout << "|Level: " << position <<"\n";
	cout << "|W/Time: " << time <<"\n";
}
//tsalin bodoh
float worker::director_salary(void){
	return time*150000 + 1000000;
}

float worker::calc_salary(void){
	if(position == "director"){
		return director_salary();
	}else{
		return time*150000;
	}
}
//ajillsan tsag nemeh
int worker::add_time(float hour){
	if(hour > 24){
		return 0;
	}else{
		time += hour;
		return 1;
	}
}

main(){
	worker first, hand[10];
	int n, i, index;
	while(1){
		cout << "--------------------\n" << "1) ajiltan nemeh\n" 
		<< "2) anhnii utga onooh\n" 
		<< "3) medeelliig hevleh\n" 
		<< "4) tsalin\n"
		<< "5) garah\n" << "--------------------\n";
		cout << "Enter number: ";
		cin >> n;
		if(n == 1){
			hand[i++].input();
		}else if(n == 2){
			hand[i++].first_input();
		}else if(n == 3){
			cout << "worker number: ";
			cin >> index;
			if(index < i){
				hand[index].print_info();
			}else{
				cout << "//----Worker not found----//\n";
			}
		}else if(n == 4){
			cout << hand[i++].calc_salary();
		}else if(n == 5){
			return 0;
		}else{
			cout << "//----Command not found----//\n";
			n = 0;
		}
	}
}
