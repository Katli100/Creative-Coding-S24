let vader;
let monster;
let x,y,rotation;

function preload(){
  vader = loadImage("data/legoVader.png")
  monster = loadImage("data/Monster_300_204.png")
}
function setup() {
  createCanvas(1200,1200);
  background(255);
  x = 0.0;
  y = 1200/2.0
  rotation = 0

  loadImage('data/legoVader.png', img => {image(img,600,600);})
 // put setup code here
}

function draw() {
  // put drawing code here
  background(255)
  image(vader, 600, 600, 100,170);
  push();
    translate(400, 100)
    scale(.5);
    image(monster,x,0);
    rotate(rotation)
  pop();

  x += 1;
  rotation +=0.01;

  if(x>width){
    x=0;
  }
  if (rotation > 5){
    rotation = 0;
  }
}
