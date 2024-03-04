let sonya,ned,rex;//declaring objects, which are unique instances of a class
function setup() {
  createCanvas(800,800);
  background(0);
 // put setup code here
  // x=40;
  // y=140;
  sonya =new SnowPerson(40,140, color(255)); //where i am constructing a new instance of an object(complex data type as it has data+functionality)
  ned =new SnowPerson(150,140, color(127));
  rex = new SnowPerson(250,140,color(255,0,180));
}
function draw() {
  // put drawing code here
  // noStroke();
  // fill(255);
  // ellipse(x, y, 40, 40);
  // ellipse(x,y+45,60,60);
  // ellipse(x, y+105, 80, 80);
//   snowPerson(40,140, color(255));
//   snowPerson(150,140, color(127));
//   snowPerson(250,140, color(255,0,180));
// }

// function snowPerson(x,y,c){
//   noStroke();
//   fill(c);
//   ellipse(x, y, 40, 40);
//   ellipse(x,y+45,60,60);
//   ellipse(x, y+105, 80, 80);
// }
// sonya.display(40,140, color(255));
// rex.display(150,140, color(127));
// ned.display(250,140, color(255,0,180));
sonya.display();
rex.display();
ned.display();
rex.run();
}

class SnowPerson{
  constructor(x,y,c){
    // noStroke();

    // fill(c);
    // ellipse(x, y, 40, 40);
    // fill(0);//eyeballs
    // ellipse(x-10, y, 5, 5);
    // ellipse(x+10, y, 5, 5);
    // fill(c);
    // ellipse(x,y+45,60,60);
    // ellipse(x, y+105, 80, 80);
    this.x =x;
    this.y=y;
    this.c=c;

  }
   display(awake){
    background(0);
  // display(x,y,c){ //locan variables to the method
    noStroke();

    fill(this.c);
    ellipse(this.x, this.y, 40, 40);
    if (awake ==true){
    fill(0);//eyeballs
    ellipse(this.x-10, this.y, 5, 5);
    ellipse(this.x+10, this.y, 5, 5);

    } else{
    fill(this.c);
    ellipse(this.x,this.y+45,60,60);
    ellipse(this.x, this.y+105, 80, 80);
    }
  }

  run(){ //these are "f'n" methods but don't need function in front of it
    this.x = this.x+5;
    if (this.x>width){
      this.x
    }

  }

  sleep(){

  }
}

