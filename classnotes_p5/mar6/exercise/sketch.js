//let x, y;
let sonya, ned, rex; //declaring objects, which are unique instances of a class
let fruit;

function setup() {
 // put setup code here
  createCanvas(800, 800);
  background(0);
  //x = 40;
  //y = 140;
  // calling the constructor to create each of them:
  sonya = new SnowPerson(40, 140, color(255)); // <---- this is where I am CONSTRUCTING a NEW instance of an OBJECT (Complex data type as it has data + functionality)
  ned = new SnowPerson(150, 140, color(127)); // grey
  rex = new SnowPerson(250, 140, color(255, 0, 180));

}

function draw() {
  background(0);
  /*
  noStroke();
  fill(255);
  ellipse(x, y, 40, 40);
  ellipse(x, y + 45, 60, 60);
  ellipse(x, y + 105, 80, 80);
  */
/*
  snowPerson(40, 140, color(255));
  snowPerson(150, 140, color(127)); // grey
  snowPerson(250, 140, color(255, 0, 180)); // pink
  */
 /*
  sonya.display(40, 140, color(255)); // white
  rex.display(150, 140, color(127)); // grey
  ned.display(250, 140, color(255, 0, 180)); // pink
  */
 sonya.display();
 rex.display();
 ned.display();


  rex.run(fruit);


} // draw function

/*
function snowPerson(x, y, c){
  noStroke();
  fill(c);
  ellipse(x, y, 40, 40);
  ellipse(x, y + 45, 60, 60);
  ellipse(x, y + 105, 80, 80);


}
*/

class SnowPerson{
    //let name; // this works in java, but not javascript

  constructor(x_, y_, c_){ // called when you make a new object
    /*
    noStroke();
    
    fill(c);
    ellipse(x, y, 40, 40);

    fill(0); // eyeballs
    ellipse(x-10, y, 5, 5);
    ellipse(x+10, y, 5, 5);

    fill(c);
    ellipse(x, y + 45, 60, 60);
    ellipse(x, y + 105, 80, 80);
    */
   this.x = x_; 
   this.y = y_;
   this.c = c_;

  }

  display(){
  //display(x, y, c){   //METHOD // local variables to the method
    noStroke();
    
    fill(this.c);
    ellipse(this.x, this.y, 40, 40); //this.x
    

    fill(this.c);
    ellipse(this.x, this.y + 45, 60, 60);
    ellipse(this.x, this.y + 105, 80, 80);
  }

  run(food){
    this.x = this.x + 5;
    if(this.x > width){
      this.x = 40;
      food.disappear();
    }

  }

  sleep(){
    if(awake == true){
      fill(0); // eyeballs
      ellipse(this.x-10, this.y, 5, 5);
      ellipse(this.x+10, this.y, 5, 5);
    } else {
      line(this.x-10, this.y, this.x-5, 5);
      line(this.x+10, this.y, this.x+5, 5);
    }
  }

} //class closer
