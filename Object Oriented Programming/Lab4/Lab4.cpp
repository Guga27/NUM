#include<string.h>
#include<iostream>
#define max 6
using namespace std;

int _id = 0;

class worker{
	private:
		int id;
		char name[20];
		char position[10];
		float time;
		float director_salary(void){
			time*150000 + 1000000;
		}
	
	public:
		void set_id(void);
		void set_data(char a, char b, float c);
		void set_name(char *n);
		void set_position(char *n);
		void set_time(float n);
		
		int get_id(void);
		char get_name(void);
		char get_position(void);
		float get_time(void);
		
		void print_info(void);
		float calc_salary(void);
		int add_time(float hour);
		void copy(worker &a);
			
};
//setting
void worker::set_id(void){
	id = ++_id;
}
void worker::set_name(char *n){
	if(name != NULL){
		delete[] name;
	}
	strcpy(name, n);
}
void worker::set_position(char *n){
	if(position != NULL){
		delete[] position;
	}
	strcpy(position, n);
}
void worker::set_time(float n){
	if(n > 24){
		time = 0;
		cout << "---time overflow---" << endl;
	}else{
		time = n;
	}
}
void worker::set_data(char a, char b, float c){
	set_name(a);
	set_position(b);
	set_time(c);
}

//getting
int worker::get_id(void){
	return id;
}
char worker::get_name(void){
	return *name;
}
char worker::get_position(void){
	return *position;
}
float worker::get_time(void){
	return time;
}

//functions
void worker::print_info(void){
	cout << "\n|--------------------\n";
	cout << "|Id: " << id <<"\n";
	cout << "|Full Name: " << name <<"\n";
	cout << "|Level: " << position <<"\n";
	cout << "|W/Time: " << time <<"\n";
}
float worker::calc_salary(void){
	if(position == "director"){
		return director_salary();
	}else{
		return time*150000;
	}
}
int worker::add_time(float hour){
	if(hour > 24){
		return 0;
	}else{
		time += hour;
		return 1;
	}
}
void worker::copy(worker &a){
	id = a.get_id();
	set_data(a.get_name(), a.get_position(), a.get_time());
}

void sorting(worker array[]){
	int i, j, count;
	for(i=1; i<max-1; i++){
		count = 0;
		for(j=0; j<max-i; j++){
			if(array[j].calc_salary() > array[j+1].calc_salary()){
				worker temp(array[j]);
				array[j].copy(array[j+1]);
				array[j+1].copy(temp);
				count++;
			}
		}
		if(count == 0){
			break;
		}
	}
}

main(){
	int index=4;
	worker n[max];
	n[0].set_data("guga", "/student/", 4.5);
	n[1].set_data("nomio", "director", 4.5);
	n[2].set_data("nandia", "director", 5.5);
	n[3].set_data("erka", "/worker/", 6.5);
	
	print(n);
	while(1){
		int s;
		cout << "\n-------------------------------------------" << endl;
		cout << "1) tsalin bodoh\n";
		cout << "2) ajiltanii medeelel hevleh\n";
		cout << "3) ajiltan nemeh\n";
		cout << "4) erembeleh\n";
		cout << "5) exit\nEnter the number: ";
		cin >> s;
		if(s == 1){
			cout << "[";
			for(int i=0; i<max; i++){
				cout << n[i].calc_salary() <<", ";
			}
			cout << "\b\b]\n";
		}else if(s == 2){
			cout << "\nEnter ID number:";
			cin >> s;
			if(s>0 && s<=max){
				cout << "ID:       " << n[s-1].get_id() <<endl;
				cout << "Name:     " << n[s-1].get_name() <<endl;
				cout << "Position: " << n[s-1].get_position() <<endl;
				cout << "Time:     " << n[s-1].get_time() <<endl;	
			}else{
				cout << "---Not found---" << endl;
			}
		}else if(s == 3){
			if(index==6){
				cout << "---Worker overflow---\n";
			}else{
				char name[20], position[10];
				float time;
				cout << "Name:     ";
				cin >> name;
				cout << "Position: ";
				cin >> position;
				cout << "Time:     ";
				cin >> time;
				n[index++].set_data(name, position, time);
				print_info(n);
			}
		}else if(s == 4){
			cout << "-------------------sorted-------------------\n";
			sorting(n);
			print_info(n);
		}else{
			break;
		}
	}
	return 0;
}


