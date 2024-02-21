size(800,800);
background(100);
fill(255,0,0);

beginShape(); //freehanding shapes using points
vertex(30,20);
vertex(85,20);
vertex(85,75);
vertex(30,75);
endShape(CLOSE);

fill(20,60,20);
beginShape();
curveVertex (40,40); //first control point
curveVertex (40,40); // is the starting point of the curve
curveVertex (80,60);
curveVertex (100,100);
curveVertex (60,120); // last point of curve
curveVertex (50,150); // last control point
endShape(CLOSE);
