float randieR;
float randieG;
float randieB;
float randieX;
float randieY;
float alpha;
void setup(){
  background(0);
  size(900,900);
}

void draw(){
  alpha = random(0,255);
  randieR = random(0,255);
  randieG = random(0,255);
  randieB = random(0,255);
  
  randieX = random(0,width);
  randieY = random(0,width);
  
  noStroke();
  fill(randieR,randieG,randieB, alpha);
  rect(randieX,randieY,40,40);
}

void keyPressed(){ //event listener, hot key interaction with void draw
  background(0);
  
}
