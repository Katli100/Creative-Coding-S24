int patternNum = 1;
color white;
int cols, rows;
int patternSize = 60; 
   float eX;
   float eY;
void setup(){
  size(900,900);
  background(0);
 
  
}

void draw(){
  if(patternNum ==1){
  //pattern 1
  background(0);
 for(int x = 50; x<=width-60; x+=60){
    for(int y=50; y<=width-60; y+=60){ 
      myPattern(x,y,255);
    }
 }
  }

if (patternNum ==2){
background(0);
//pattern2
 for(int x = 30; x<width-30; x+=30){
    for(int y=30; y<width-30; y+=60){
      myPattern(x,y,255);
    }
 }

}
//pattern3

if (patternNum ==3){
  background(0);
 for(int y = 0; y<width; y+=120){

    for(int x=0; x<width; x+=60){ 

      myPattern(x,y,255);



      
    }
 }
  for(int y = 60; y<width; y+=120){

    for(int x=30; x<width; x+=60){ 
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
      myPattern(x, y,255);
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
  boolean moveRight = true;
 for (int x = 0; x < width; x += 15) {
    for (int y = 0; y < height; y += 60) {
      // Draw myPattern with color 255
      myPattern(x, y, 255);

      // Draw myPattern with color 105 below the first one
      myPattern(x, y, 105);

      if (!moveRight) {
        // Move the second pattern (color 105) 5 pixels to the right
        x += 10;
      } else {
        // Move the second pattern (color 105) 10 pixels to the left
        x -= 10;
      }

      // Draw myPattern with color 105
      myPattern(x, y, 255);

      if (moveRight) {
        // Move the second pattern (color 105) 10 pixels to the right
        x += 10;
      }

      // Toggle the movement direction
      moveRight = !moveRight;
    }
  }
}
 if (patternNum == 7){
background(0);
    for (int x = 0; x < width; x += 60) {
      for (int y = 0; y < height; y += 60) {
        pushMatrix();
        translate(mouseX, mouseY);
        rotate(radians(frameCount * 2));
        myPattern(x, y, color(random(255), random(255), random(255)));
        popMatrix();
      }
    }
}


 
 
 if(patternNum == 8) {
   background(0);
    for (int x = 0; x < width; x += 60) {
      for (int y = 0; y < height; y += 60) {
        pushMatrix();
        translate(x, y);
        rotate(radians(mouseX % 360));
        myPattern(0, 0, color(random(255), random(255), random(255)));
        popMatrix();
      }
    }
 }
 
  if(patternNum == 9) {
    background(0);
    float offsetX = map(mouseX, 0, width, 0, 60);
    float offsetY = map(mouseY, 0, height, 0, 60);

    for (int x = 0; x < width; x += 60) {
      for (int y = 0; y < height; y += 60) {
        pushMatrix();
        translate(x + offsetX, y + offsetY);
        rotate(radians(frameCount * 2));
        myPattern(0, 0, color(random(255), random(255), random(255)));
        popMatrix();
      }
    }
  }
 }

 

 
  



void mousePressed(){
  if (patternNum+1  ==10){
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
