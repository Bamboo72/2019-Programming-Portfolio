// Jacob Schwartz 10/24/18
// ScreenSaver App modified to 3d

float xpos, ypos, pointCount, radius;

void setup() {
  background(0);
  size(500,500,P3D);
  xpos = width/2;
  ypos = height/2;
    radius = 5;
}

void draw() {
  noStroke();
  lights();
    pointCount = 3;
 radius += random(-1,1);
  if (random(4)>3) {
    
    moveRight(xpos, ypos, pointCount);
  } else if (random(4)>2) {
   
    moveUp(xpos, ypos, pointCount);
  } else if (random(4)>1) {
    
    moveDown(xpos, ypos, pointCount);
  } else {
    
    moveLeft(xpos, ypos, pointCount);
  }
  if (xpos>width || xpos<0 || ypos>height || ypos<0) {
    xpos = random(width);
    ypos = random(height);
      fill(random(255),random(255),random(255));
      }
}

void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    translate(startX+i, startY);
    sphere(radius);
    xpos = startX + i;
    ypos = startY;
  }
}

void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    translate(startX-i, startY);
    sphere(radius);
    xpos = startX - i;
    ypos = startY;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    translate(startX, startY-i);
    sphere(radius);
    xpos = startX;
    ypos = startY - i;
  }
}

void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    translate(startX, startY+i);
    sphere(radius);
    xpos = startX;
    ypos = startY + i;
  }
}
