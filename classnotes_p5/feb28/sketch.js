function setup() {
  createCanvas(800,800);
  background(210,154255);
  stroke(33,130,232);
  strokeWeight(1);
 // put setup code here
}

function draw() {
  // put drawing code here
}

function shapeCluster(){
  for(let y =20; y<=50; y+=10){
    for(let x =20; x<=y; x+=5){
      line(x,y,x-3,y-3);
    }
  }
}

function mousePressed(){
  push();
  translate(mouseX, mouseY);
  for(let j=0; j<5; j++){ //for loops lock
    rotate(radians(45));
    shapeCluster();
  }
  pop();
  
}
