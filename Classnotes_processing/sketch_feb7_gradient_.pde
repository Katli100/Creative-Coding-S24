int value;
int y;

void setup(){
  size(500,500);
  background(0);
  value = 0;
  y = 0;
  strokeWeight(20);
  
}

void draw(){
  stroke(value);
  line(0,0 + y,500,0 + y);
  
  //y = y +19;
  y++;
  value+=10;
  
  if( y>height){
    y=0;
  }
  
  if(y%2 == 0) { // % is dividing but uses the remainder number. == is comparing 2 values
  
    println(y);
  } else { 
    value +=1;
    
    if( value >250){
      value = 0;
    }
      
      
  }
  //can also use y+=10
}
