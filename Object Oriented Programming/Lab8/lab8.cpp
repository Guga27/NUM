#include <iostream>
#include <math.h>
#include <vector>
#include <string.h>
#define PI 3.14159
using namespace std;
class Shape{
    protected:
		char *name;
	public:
		Shape(char *ner){
			name=new char[strlen(ner)+1];
			strcpy(name, ner);
		}
		Shape(){
		}
        void setName(char *ner){
			name=new char[strlen(ner)+1];
			strcpy(name, ner);
		}
		~Shape(){
			delete name;
		}
        virtual float findLength() = 0;
};
class TwoDimensionalShape: public Shape{
    protected:
        int x;
        int y;
        int r;
    public:
        TwoDimensionalShape(char *ner, int a, int b, int urt): Shape(ner){
			x=a;
			y=b;
			r=urt;
		}
		TwoDimensionalShape(char *ner) : Shape(ner){
		}
        int getRadius(){
            return r;
        }
        virtual float findArea()=0;
};
class Circle: public TwoDimensionalShape{
    public:
        float findArea(){
            return PI*r*r;
        }
        float findLength(){
            return 2*PI*r;
        }
        Circle(): TwoDimensionalShape("Circle"){
			x=0;
			y=0;
		}
		Circle(char *ner, int a, int b, int urt): TwoDimensionalShape(ner, a, b, urt){
		}
		void setRadius(float a){
			r=a;
		}
		void print(){
			cout<<"Ner: "<< name <<endl;
			cout<<"Toirgiin tuv: "<<x<<" "<<y<<endl;
			cout<<"Radius: "<< r << " "<<endl;
			cout<<"Talbai: "<< findArea()<<endl;
			cout<<"Urt: "<< findLength()<<endl<<endl;
		}
};
class Square: public TwoDimensionalShape{
	private:
		int x1, x2, x3, y1, y2, y3;
	public:
		float findArea(){
			return r*r;
		}
		float findLength(){
			return 4*r;
		}
		Square(): TwoDimensionalShape("Square"){
			x=0;
			y=0;
			r=1;
			x1=x+r;
			y1=y;
			x2=x+r;
			y2=y+r;
			x3=x;
			y3=y+r;
		}
		Square(char *ner, int a, int b, int urt) : TwoDimensionalShape(ner, a, b, urt){
			x1=x+r;
			y1=y;
			x2=x+r;
			y2=y+r;
			x3=x;
			y3=y+r;
		}
		void setLength(float l){
			r=l;
		}
		void setA(float a, float b){
			x=a;
			y=b;
			x1=x+r;
			y1=y;
			x2=x+r;
			y2=y+r;
			x3=x;
			y3=y+r;
		}
		void print(){
			cout<<"Ner: "<<name<<endl;
			cout<<"Koordinatuud: "<< endl;
			cout<<"(" << x << ", "<< y<<") ";
			cout<<"(" << x1 << ", "<<y1<<") ";
			cout<<"(" << x2 << ", "<<y2<<") ";
			cout<<"(" << x3 << ", "<<y3<<") "<<endl;
			cout<<"Urt: " << r << " "<<endl;
			cout<<"Talbai: "<<findArea()<<endl;
			cout<<"Perimeter: "<<findLength()<<endl<<endl;
		}
    
};
class Triangle: public TwoDimensionalShape{
   private:
		float x1, x2, y1, y2;
	public:
		float findArea(){
			return(r*r*sqrt(3)/4);
		}
		float findLength(){
			return 3*r;
		}
		Triangle(): TwoDimensionalShape("Triangle"){
		}
		Triangle(char *ner, int a, int b, int urt): TwoDimensionalShape(ner, a, b, urt){
			y1=y-sqrt(3)*r/2;
			y2=y-sqrt(3)*r/2;
			x1=x-r/2;
			x2=x+r/2;
		}
		void setLength(float l){
			r=l;
		}
		void setA(float a, float b){
			x=a;
			y=b;
			y1=y-sqrt(3)*r/2;
			y2=y-sqrt(3)*r/2;
			x1=x-r/2;
			x2=x+r/2;
		}
		void print(){
			cout<<"Ner: "<<name<<endl;
			cout<<"Koordinatuud: "<<endl;
			cout<<"("<<x<<", "<<y<< ") ";
			cout<<"("<<x1<<", "<<y1<< ") ";
			cout<<"("<<x2<<", "<<y2<< ") "<<endl;
			cout<<"Urt: " <<r<< " "<<endl;
			cout<<"Talbai: " <<findArea()<<endl;
			cout<<"Perimeter: " <<findLength()<<endl;
		}
        
};
int main(){
    TwoDimensionalShape *s[6], *t;
    
    Circle c1("Circle1", 5, 5, 5);
    Circle c2("Circle2", 10, 10, 7);

    Square s1("Square1", 7, 8, 4); 
    Square s2("Square2", 9, 3, 3);

    Triangle t1("Triangle1", 3, 1, 7);
    Triangle t2("Triangle2", 1, 0, 4);

    c1.print();
    c2.print();
    s1.print();
    s2.print();
    t1.print();
    t2.print();
    s[0]=&c1;
    s[1]=&c2;
    s[2]=&s1;
    s[3]=&s2;
    s[4]=&t1;
    s[5]=&t2;
    int i, j;
    for(i=0; i<6; i++){
        for(j=0; j<6; j++){
            if(s[i]->findArea()>s[j]->findArea()){
                t=s[i];
                s[i]=s[j];
                s[j]=t;
            }
        }
    }
    cout<<"\n Sorted:\n";
    for(i=0; i<6; i++){

        cout<<s[i]->findArea()<<endl;
    }
    
}
