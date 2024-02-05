//global declaration; 
float randieR;
float xLoc;

void setup(){
  
  int myVar; //declared and accessed locally
  size(900,900);
  background(0);
  myVar = 12;
  println(myVar);
  
}

void draw(){
  background(0);
  rect(xLoc, 400,50,50);
  xLoc = xLoc +10;
  if (xLoc > width){
    xLoc = 0;
  }
  println(xLoc);
}
