let xVals = []; //declaring an empty array
let yVals =[];

function setup() {
  createCanvas(800,800);
  background(255);
  fill(255,102);
  num = 50;
 // put setup code here
}

function draw() {
  // put drawing code here
  background(0);
  //use a for loop to visit every spot in the array
  // take what's in the previos spot and move it to the current spot
  for(let i = num -1; i>0; i--){
    xVals[i] = xVals[i-1];
    yVals[i] = yVals[i-1];
  }
  xVals[0] = mouseX
  yVals[0] = mouseY

  for(let i = 0; i < num; i++){
    ellipse(xVals[i], yVals[i], num - i/2, num - i/2);
  }
}
