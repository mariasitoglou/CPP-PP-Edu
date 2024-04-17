#include <iostream>
#include <vector>
#include <fstream>
#include "vec3.h"
using namespace std;

int main(){
    class Pixel {
        private:
            int positionx;
            int positiony;
            vec3 color;
        public:
            void setx(int x){
                positionx=x;
                return;
            }
            int getx(){
                return positionx;
            }
            void sety(int y){
                positiony=y;
                return;
            }
            int gety(){
                return positiony;
            }
            void setcolor(vec3 c ){
                color=c;
                return;
            }
            vec3 getcolor(){
                return color;
            }
            Pixel(int x, int y, vec3 c);
    };

    class Image_Data{
        private:
            vector <vector<Pixel>> Image;
            int width;
            int height;
        public:
            void setwidth(int w){
                width=w;
                return;
            }
            int getwidth(){
                return width;
            }
            void setheight(int h){
                height=h;
                return;
            }
            int getheight(){
                return height;
            }
            void setImage(int w, int h){
                //write code
            }
            //make getter getImage
            Image_Data(string ppm){
                    //write code
            }

    };

    return 0;
}