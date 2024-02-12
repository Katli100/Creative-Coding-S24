void setup(){
  size(800,800);
  background(0);
  
}

void draw(){
myPattern(0,0);
myPattern(30,0);
myPattern(0,60);
myPattern(30,60);
}


void myPattern(int eX, int eY) {
 stroke(255);
 line(0+eX,0+eY,30+eX,30+eY);
 line(0+eX,10+eY,20+eX,30+eY);
 line(0+eX,20+eY,10+eX,30+eY);
 line(30+eX,30+eY,0+eX,60+eY);
 line(20+eX,30+eY,0+eX,50+eY);
 line(10+eX,30+eY,0+eX,40+eY);
 line(30+eX,0+eY,0+eX,30+eY);
 line(30+eX,10+eY,10+eX,30+eY);
 line(30+eX,20+eY,0+eX,50+eY);
 line(0+eX,30+eY,30+eX,60+eY);
 line(10+eX,30+eY,30+eX,50+eY);
 line(20+eX,30+eY,30+eX,40+eY);
}
