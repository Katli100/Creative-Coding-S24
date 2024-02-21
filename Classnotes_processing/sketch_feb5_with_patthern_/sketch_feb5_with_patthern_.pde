color purple;
color tan; 
color yellow;

void setup(){
  size(900,900);
  background(0);
  
  purple = color(154,116,237);
  tan = color(173,170,128);
  yellow = color(237,229,116);
  
}

void draw(){
  myPattern(30,30,purple);
  myPattern(200,30,tan);
  myPattern(200,250,purple);
}

//internal variables that can be passed
void myPattern(int eX, int eY, color c){ //custom f'n
  fill(255);
  noStroke();
  ellipse( 30 + eX, 30+ eY,30,30);
  fill(c);

  
  beginShape();//top triangle
  vertex(98+ eX,18+ eY);
  vertex(150+ eX,67+ eY);
  vertex(58+ eX,67+ eY);
  endShape();
  
  beginShape();//bottom triangle
  vertex(148+ eX,65+ eY);
  vertex(98+ eX,124+ eY);
  vertex(59+ eX,65+ eY);
  endShape();
  
  ellipse(150+ eX,30+ eY,30,30); //top right circle
  
  ellipse(30+ eX,120+ eY,30,30);
  
  ellipse(150+ eX,120+ eY,30,30);


}
void mousePressed(){
  print(mouseX,mouseY);
  
}
