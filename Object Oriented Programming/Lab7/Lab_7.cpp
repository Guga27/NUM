#include<math.h>
#include<string.h>
#include<iostream>
#define pi 3.1415
using namespace std;

//parent class
class shape{
	protected:
		char *name;
		float length;
	public:
		//functions
		void set_name(char *_name);
		void set_length(float _length);
		char *get_name(void);
		float get_length(void);
		
		//constructor
		shape();
		~shape();
};
//set functions
void shape::set_length(float _length){
	length = _length;
}
//get functions
float shape::get_length(){
	return length;
}
char *shape::get_name(){
	return name;
}
//constructor
shape::shape(){
	name = new char[6];
	strcpy(name, "shape");
}
shape::~shape(){
	delete[] name;
	//cout << "shape deleted..." << endl;
}

//child class (shape)
class shape2D:public shape{
	//set coordinate
	protected:
		float *x;
		float *y;
	public:
		float calc_area(void);
		float perimeter(void);
		void set_coord(void);
		
		shape2D();
		~shape2D();
};
//constructor
shape2D::shape2D(){
	//cout << "shape2D created..." << endl;
	if(name!=NULL){
		delete[] name;
	}
	name = new char[8];
	strcpy(name, "shape2D");
} 
shape2D::~shape2D(){
	//cout << "shape2D deleted..." << endl;
}

//child class
class square:public shape2D{
	public:
		float calc_area(void);
		float perimeter(void);
		void set_coord(void);
		void coord(void);
		
		square();
		~square();
};
//functions
float square::perimeter(){
	return length*4;
}
float square::calc_area(){
	return length*length;
}
void square::set_coord(){
	x = new float[4];
	y = new float[4];
	
	x[0] = 0;
	x[1] = x[0] + length;
	x[2] = x[1];
	x[3] = x[1] - length;

	y[0] = 0;
	y[1] = y[0];
	y[2] = y[1] - length;
	y[3] = y[2];
}
void square::coord(){
	cout << "[";
	for(int i=0; i<4; i++){
		cout << "(" << x[i] << ", " << y[i] << "), ";
	}
	cout << "\b\b]" << endl;
}
//constructor
square::square(){
	//change name
	if(name!=NULL){
		delete[] name;
	}
	name = new char[7];
	strcpy(name, "square");
}
square::~square(){
	delete[] x;
	delete[] y;
	//cout << "square deleted..." << endl;
}

//child class
class triangle:public shape2D{
	public:
		float calc_area(void);
		float perimeter(void);
		void set_coord(void);
		void coord(void);
		
		triangle();
		~triangle();
};
//functions
float triangle::perimeter(){
	return length*3;
}
float triangle::calc_area(){
	return length*length*sin(pi/3)/2;
}
void triangle::set_coord(){
	x = new float[3];
	y = new float[3];
	
	x[0] = 0;
	x[1] = x[0] + length/2;
	x[2] = x[1]-length;

	y[0] = 0;
	y[1] = y[0] - length*cos(pi/6);
	y[2] = y[1];
}
void triangle::coord(){
	cout << "[";
	for(int i=0; i<3; i++){
		cout << "(" << x[i] << ", " << y[i] << "), ";
	}
	cout << "\b\b]" << endl;
}
//constructor
triangle::triangle(){
	if(name!=NULL){
		delete[] name;
	}
	name = new char[9];
	strcpy(name, "triangle");
}
triangle::~triangle(){
	delete[] x;
	delete[] y;
}

//child class
class circle:public shape2D{
	public:
		float calc_area(void);
		float perimeter(void);
		void set_coord(void);
		void coord(void);
		
		circle();
		~circle();
};
//functions
float circle::perimeter(){
	return 2*pi*length;
}
float circle::calc_area(){
	return pi*length*length;
}
void circle::set_coord(){
	x = new float;
	y = new float;
	
	*x = 0;
	*y = 0;
}
void circle::coord(){
	cout << "[";
	cout << "(" << *x << ", " << *y << "), ";
	cout << "\b\b]" << endl;
}
//constructor
circle::circle(){
	if(name!=NULL){
		delete[] name;
	}
	name = new char[7];
	strcpy(name, "circle");
}
circle::~circle(){
	delete x;
	delete y;
}

void print(square &x){
	cout << "------------------------" << endl;
	cout << "shape:     " << x.get_name() << endl;
	cout << "length:    " << x.get_length() << endl;
	cout << "perimeter: " << x.perimeter() << endl;
	cout << "area:      " << x.calc_area() << endl;
	x.coord();
}
void print(triangle &x){
	cout << "------------------------" << endl;
	cout << "shape:     " << x.get_name() << endl;
	cout << "length:    " << x.get_length() << endl;
	cout << "perimeter: " << x.perimeter() << endl;
	cout << "area:      " << x.calc_area() << endl;
	x.coord();
}
void print(circle &x){
	cout << "------------------------" << endl;
	cout << "shape:     " << x.get_name() << endl;
	cout << "length:    " << x.get_length() << endl;
	cout << "perimeter: " << x.perimeter() << endl;
	cout << "area:      " << x.calc_area() << endl;
	x.coord();
}
main(){
	square a;
	triangle b;
	circle c;
	
	a.set_length(1.5);
	a.set_coord();
	b.set_length(1.5);
	b.set_coord();
	c.set_length(1.5);
	c.set_coord();
	
	print(a);
	print(b);
	print(c);
}
