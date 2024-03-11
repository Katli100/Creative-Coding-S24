let b;
let c;
let d;
let v;

let particles = [];

function setup() {
 // put setup code here
  createCanvas(800, 800);
  background(0);
  // each of these is an object:
  /*
  b = new Ball(width/2, 48);
  c = new Ball(30, 48);
  d = new Ball(600, 48);
  */
 v  = createVector(width/2, 48); // creating a vector object
 b = new Ball(v);

}

function draw() {
  background(0);
  // put drawing code here
  /*
  //I must call the methods on each object that I wish to use:
  b.display();
  c.display();
  d.display();
  */
 b.update();
 b.isDead();
 b.display();
}

/*
//this is the class definition:
class Ball{

  constructor(x, y){
    this.x = x;
    this.y = y;

  }

  display(){
    stroke(127);
    strokeWeight(2);
    fill(255, 127);
    ellipse(this.x, this.y, 48, 48);
  }





}
*/
