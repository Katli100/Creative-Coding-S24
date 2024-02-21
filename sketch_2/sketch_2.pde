int patternNum = 1;
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
      myPattern(x,y);
    }
 }
  }

if (patternNum ==2){
background(0);
//pattern2
 for(int x = 30; x<width-30; x+=30){
    for(int y=30; y<width-30; y+=60){ //the math (y+=20)happens after you do whatever is inside the for loop.
      myPattern(x,y);
    }
 }

}
//pattern3

if (patternNum ==3){
  background(0);
 for(int y = 0; y<width; y+=120){

    for(int x=0; x<width; x+=60){ //the math (y+=20)happens after you do whatever is inside the for loop.

      myPattern(x,y);



      
    }
 }
  for(int y = 60; y<width; y+=120){

    for(int x=30; x<width; x+=60){ //the math (y+=20)happens after you do whatever is inside the for loop.
      myPattern(x,y);



      
    }
 }
  }
}
void mousePressed(){
  if (patternNum+1  ==4){
    patternNum =1;
}else{
  patternNum +=1;
}
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
