//programming in Passive Mode. runs in order, once, and shows you what happens at the end of the run.

size(500,500);
background(55); //comments: background (0-255) w/ 0 as black and 255 as white.
background(126, 49, 200);  //background(R,G,B). only pass either 1 or 3 values, and can pass picture for background.
/* this is for commenting
for more than one line.
make sure to close it with a */
noStroke(); // a switch. once written, this interacts with everything that comes after.
rect(0, 250, 50, 80); // for rectangle. rect(x,y,w,h). x & y values determine position of shape, and w & h values determine size)
/* coordinates or positions start at the top left. 
x value move left and right (increasing to right, decreasing to the left) 
y value move up and down (increasing to go down, decreasing to go up) */

stroke(50,200,0);
strokeWeight(10); // both stroke() and strokeWeight both will turn stroke on. 
ellipse(50,50,50,50);

noStroke();
strokeWeight(10);
//stroke(50,299,0); 
ellipse (199,100, 50,50);
