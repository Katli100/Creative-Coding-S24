
void setup(){
  size(400,400);
  background(100,200,255);
}

void draw(){
  noStroke();
  fill(175,225,203);
  
  for(int  i= 0; i  < 10; i ++){ //++ means adding in increment of 1
  //for loops comes in 3 parts, the variable, boolean, and how it's changing
  float r = random(1);
  ellipse((40 *i)*r,50,10,10);
  
  }
  println("0");
  
}
