PImage img;

void setup() {
  size(800,800);
  img = loadImage("Mehretu.jpeg");
}

void draw() {
  image(img, 0, 0,800,800);
  strokeWeight(10);
  line(300,180,800,290); 
  line(300,180,294,190);
  line(238,213,533,299);
  line(238,213,233,225);
  line(533,299,532,309);
  line(758,325,800,305);
  line(365,363,800,493);
  line(423,465,800,683);
  line(423,465,416,471);
  line(430,157,800,160);
  line(447,173,800,108);
  line(453,183,800,164);
  line(146,372,778,636);
  line(203,696,800,738);
}

void mousePressed(){
  print("mouseX is: ");
  print(mouseX);
  print("mousey is: ");
  print(mouseY);
}
//size(800,800);

//background(234,216,169,255);
