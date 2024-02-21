int x=0;
void setup(){
  size(400,300);
  fill(100,34,240);
}

void draw(){
  background(255);
  rect(x,10,40,40);
  x++;
  if(x >width-40){
    noLoop();
  }
}
