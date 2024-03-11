let img;
let nPoints;
let xPos;
let yPos;
function preload(){
  img = loadImage("data/cursor_with_shadow_15x21.png")
}
function setup() {
  createCanvas(800,800);
  background(255);
 // put setup code here
 nPoints = 100;
 // making a new array of a particular length (100); we are making objects
  xPos =new Array(nPoints);
  yPos = new Array(nPoints)

}

function draw() {
  // put drawing code here
  background(253);
  stroke(0,0,0);
  strokeJoin(round);
  strokeWeight(8);

  xPos[nPoints-1] = mouseX
  yPos[nPoints-1] = mouseY

  for(let i = 1; i < (nPoints -1); i++){
    line(xPos[i], yPos[i], xPos[i+1], yPos[i+1]);
    xPos[i]= xPos[i+1]
    yPos[i] = yPos[i+1]
  }
  image(img, mouseX, mouseY, 15*6, 21*6);
}
