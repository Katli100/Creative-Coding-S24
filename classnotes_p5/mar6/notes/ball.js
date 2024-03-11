//this is the class definition:
class Ball{

  constructor(position){
    /*
    this.x = x;
    this.y = y;
    */
   this.position = position;
   this.acceleration = createVector(0, 0.1);
   this.velocity = createVector(random(-1, 1), random(-1, 0));
   this.lifespan = 255.0;
  }

  update(){
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.lifespan -= 2;

  }

  display(){
    stroke(127,this.lifespan);
    strokeWeight(2);
    fill(255, this.lifespan);
    ellipse(this.position.x, this.position.y, 48, 48);
  }

  isDead(){
    if(this.lifespan < 0.0){
        return true;
    } else {
        return false;
    }
  }





}