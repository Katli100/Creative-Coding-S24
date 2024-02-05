void setup(){
  size(900,900);
  background(0);
  
}

void draw(){
  myPattern();
}

//internal variables that can be passed
void myPattern(int eX, int eY){ //custom f'n
  fill(255);
  noStroke();
  ellipse( 30, 30,30,30);
  
  beginShape();//top triangle
  vertex(98,18);
  vertex(150,67);
  vertex(58,67);
  endShape();
  
  beginShape();//bottom triangle
  vertex(148,65);
  vertex(98,124);
  vertex(59,65);
  endShape();
  
  ellipse(150,30,30,30); //top right circle
  
  ellipse(30,120,30,30);
  
  ellipse(150,120,30,30);


}
void mousePressed(){
  print(mouseX,mouseY);
  
}
