//active mode; code will keep looping. can vary and change every loop
//void ___ == this f'n does not return a value
//     ^^^particular name of f'n
// whatever space between the two {} is the anatomy of f'n
//setup == any code in between {} runs once. things you don't want to change
//draw == code b/w {} will keep looping

void setup(){
  size(800,800);
  background(0);  
}


void draw(){
  background(0); //because this is first, after everything else runs, this will be next and "clears" the stuff from before
  fill(255,100,100,100);
  ellipse(100,20,50,75);
  
}
