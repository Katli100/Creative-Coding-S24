int patternNum = 1;
color white;
void setup(){
  size(900,900);
  background(0);
 
  
}

void draw(){
  if(patternNum ==1){
  //pattern 1
  background(0);
 for(int x = 50; x<=width-60; x+=60){
    for(int y=50; y<=width-60; y+=60){ //the math (y+=20)happens after you do whatever is inside the for loop.
      myPattern(x,y,255);
    }
 }
  }

if (patternNum ==2){
background(0);
//pattern2
 for(int x = 30; x<width-30; x+=30){
    for(int y=30; y<width-30; y+=60){ //the math (y+=20)happens after you do whatever is inside the for loop.
      myPattern(x,y,255);
    }
 }

}
//pattern3

if (patternNum ==3){
  background(0);
 for(int y = 0; y<width; y+=120){

    for(int x=0; x<width; x+=60){ //the math (y+=20)happens after you do whatever is inside the for loop.

      myPattern(x,y,255);



      
    }
 }
  for(int y = 60; y<width; y+=120){

    for(int x=30; x<width; x+=60){ //the math (y+=20)happens after you do whatever is inside the for loop.
      myPattern(x,y,255);



      
    }
 }
  }
if (patternNum ==4){
  background(0);
int addX = 30;
  int y = 0;
  int x = 0;

  for (x = 0; x < width - 30; x += addX) {
    y += 10;
    myPattern(x, y,100);
  }

  // Check if the pattern reaches the right edge
  if (x >= width - 30) {
    // Change direction to move left
    addX = -30;

    // Continue drawing the pattern in the opposite direction
    for (x = width - 30; x > 0; x += addX) {
      y += 10;
      myPattern(x, y,200);
    }
  }

  // Check if the pattern reaches the left edge
  if (x <= 0) {
    // Change direction to move right again
    addX = 30;

    // Continue drawing the pattern in the opposite direction
    for (x = 0; x < width; x += addX) {
      y += 10;
      myPattern(x, y,300);
    }
  }
}
      
      
 if(patternNum ==5){
   boolean functionOn = true;
   background(0);
    if (functionOn) {
    for (int i = 0; i < 5; i++) {
      float x = random(width);
      float y = random(height);
      myPattern((int)x, (int)y, color(random(255), random(255), random(255))); // Call your pattern function
    }
  }
  

}
if (patternNum == 6){
  background(0);
  //myPattern(0,0,255); //1
  //myPattern(15,0,255);
  //myPattern(100,0,255);//2
  //myPattern(120,0,255);
  //myPattern(200,0,255);//3
  //myPattern(225,0,255);
  //myPattern(300,0,255);//4
  //myPattern(310,0,255);
  //myPattern(400,0,255);//5
  //myPattern(405,0,255);
  //myPattern(500,0,255);//6
  
 for(int x = 0; x<width; x+=15){
    for(int y= 0; y<width; y+=60){ 
      myPattern(x,y,255);
      if(x == x){
        
      }
      x+= 15;
      myPattern(x,y,105);
    }
 }
}


 }


 
  



void mousePressed(){
  if (patternNum+1  ==7){
    patternNum =1;
}else{
  patternNum +=1;
}
}


void myPattern(int eX, int eY, color name) {
 stroke(name);
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
