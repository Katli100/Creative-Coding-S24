function setup() {
  createCanvas(800,800);
  background(255);
  noStroke();
 // put setup code here
}

function draw() {
  // put drawing code here
  fill(206,103,126); //mauve
  rect(0, 0,80,80);

  push(); //records the previous matrix coords
    translate(0,100);
    fill(91,187,209);
    rect(0,0,80,80);
  pop();//restores to the recent previous

  push();
    translate(100,0);
    fill(232,141,103);//orange
    rect(0,0,80,80);
  pop();
  
}
