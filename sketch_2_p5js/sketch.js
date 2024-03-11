let patternNum = 1;
let clusterOpacity = 0;
let clusterInterval = 60;
let lastClusterTime = 0;

function setup() {
  createCanvas(900, 900);
  background(0);
}

function draw() {
  if (patternNum == 1) {
    //pattern 1
    background(0);
    for (let x = 50; x <= width - 60; x += 60) {
      for (let y = 50; y <= width - 60; y += 60) {
        myPattern(x, y, color(255));
      }
    }
  }

  if (patternNum == 2) {
    background(0);
    //pattern2
    for (let x = 30; x < width - 30; x += 30) {
      for (let y = 30; y < width - 30; y += 60) {
        myPattern(x, y, color(255));
      }
    }
  }

  if (patternNum == 3) {
    background(0);
    for (let y = 0; y < width; y += 120) {
      for (let x = 0; x < width; x += 60) {
        myPattern(x, y, color(255));
      }
    }
    for (let y = 60; y < width; y += 120) {
      for (let x = 30; x < width; x += 60) {
        myPattern(x, y, color(255));
      }
    }
  }

  if (patternNum == 4) {
    background(0);
    let addX = 30;
    let y = 0;
    let x = 0;

    for (x = 0; x < width - 30; x += addX) {
      y += 10;
      myPattern(x, y, color(100));
    }

    if (x >= width - 30) {
      addX = -30;

      for (x = width - 30; x > 0; x += addX) {
        y += 10;
        myPattern(x, y, color(200));
      }
    }

    if (x <= 0) {
      addX = 30;

      for (x = 0; x < width; x += addX) {
        y += 10;
        myPattern(x, y, color(255));
      }
    }
  }

  if (patternNum == 5) {
    background(0);
    let functionOn = true;
    if (functionOn) {
      for (let i = 0; i < 5; i++) {
        let x = random(width);
        let y = random(height);
        myPattern(floor(x), floor(y), color(random(255), random(255), random(255)));
      }
    }
  }

  if (patternNum == 6) {
    background(0);
    let moveRight = true;
    for (let x = 0; x < width; x += 15) {
      for (let y = 0; y < height; y += 60) {
        myPattern(x, y, color(255));
        myPattern(x, y, color(105));

        if (!moveRight) {
          x += 10;
        } else {
          x -= 10;
        }

        myPattern(x, y, color(255));

        if (moveRight) {
          x += 10;
        }

        moveRight = !moveRight;
      }
    }
  }

  if (patternNum == 7) {
    background(0);
    for (let x = 0; x < width; x += 80) {
      for (let y = 0; y < height; y += 80) {
        push();
        translate(x, y);
        rotate(radians(frameCount * 2));
        let scaleFactor = map(mouseY, 0, height, 0.5, 1.5); // Interactive scale factor
        scale(scaleFactor);
        myPattern(0, 0, color(255, 0, 0));
        pop();
      }
    }
  }

  if (patternNum == 8) {
    background(0);

    // Set initial parameters
    let numBalls = 5;

    for (let i = 0; i < numBalls; i++) {
      let x = random(width);
      let y = random(height);
      let size = random(40, 80);
      let transparency = random(100, 255);

      push();
      translate(x, y);
      draw3DBall(0, 0, size, transparency);
      pop();
    }
  }

  if (patternNum == 9) {
    background(0);

    // Set initial parameters
    let spacing = 60;
    let xOffset = 30;
    let yOffset = 30;

    for (let x = 0; x < width; x += spacing) {
      for (let y = 0; y < height; y += spacing) {
        // Calculate transparency based on distance from the mouse position
        let distanceToMouse = dist(x, y, mouseX, mouseY);
        let alphaValue = map(distanceToMouse, 0, 300, 255, 0);

        // Set a delay based on the x and y positions
        let delayValue = x * 0.02 + y * 0.02;
        let currentFrame = frameCount - delayValue;

        // Ensure alpha is within valid range
        alphaValue = constrain(alphaValue, 0, 255);

        // Draw only when the frame count is within the delay
        if (currentFrame > 0) {
          push();
          translate(x + xOffset, y + yOffset);
          myPattern(0, 0, color(255, alphaValue)); // Use custom myPattern function
          pop();
        }
      }
    }
  }
}


function mousePressed() {
  if (patternNum + 1 == 10) {
    patternNum = 1;
  } else {
    patternNum += 1;
  }
}

function draw3DBall(eX, eY, size, transparency) {
  // Draw 3D-like ball illusion using myPattern function
  myPattern(eX, eY, color(255, transparency, 0));

  // Additional myPattern calls can be added here if necessary
  myPattern(eX + size / 4, eY + size / 4, color(255, transparency * 0.8));
  myPattern(eX - size / 4, eY - size / 4, color(255, transparency * 0.8));
  myPattern(eX + size / 4, eY - size / 4, color(255, transparency * 0.8));
  myPattern(eX - size / 4, eY + size / 4, color(255, transparency * 0.8));

  myPattern(eX, eY + size / 2, color(255, transparency * 0.6));
  myPattern(eX, eY - size / 2, color(255, transparency * 0.6));
  myPattern(eX + size / 2, eY, color(255, transparency * 0.6));
  myPattern(eX - size / 2, eY, color(255, transparency * 0.6));
}

function myPattern(eX, eY, name) {
  stroke(name);
  line(0 + eX, 0 + eY, 30 + eX, 30 + eY);
  line(0 + eX, 10 + eY, 20 + eX, 30 + eY);
  line(0 + eX, 20 + eY, 10 + eX, 30 + eY);
  line(30 + eX, 30 + eY, 0 + eX, 60 + eY);
  line(20 + eX, 30 + eY, 0 + eX, 50 + eY);
  line(10 + eX, 30 + eY, 0 + eX, 40 + eY);
  line(30 + eX, 0 + eY, 0 + eX, 30 + eY);
  line(30 + eX, 10 + eY, 10 + eX, 30 + eY);
  line(30 + eX, 20 + eY, 0 + eX, 50 + eY);
  line(0 + eX, 30 + eY, 30 + eX, 60 + eY);
  line(10 + eX, 30 + eY, 30 + eX, 50 + eY);
  line(20 + eX, 30 + eY, 30 + eX, 40 + eY);
}
