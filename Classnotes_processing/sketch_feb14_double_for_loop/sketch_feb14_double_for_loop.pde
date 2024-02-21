void setup(){
  size(400,300);
  smooth();
  noFill();
}

void draw(){
  background(255);
  
  for(int x = 50; x<=width; x+=20){
    for(int y=50; y<=width; y+=20){ //the math (y+=20)happens after you do whatever is inside the for loop.
      myCross(x,y);
    }
  }
}

void myCross(int x,int y){
 line(x-5, y-5, x+5, y+5);
 line(x+5,y-5,x-5,y+5);
 
}
