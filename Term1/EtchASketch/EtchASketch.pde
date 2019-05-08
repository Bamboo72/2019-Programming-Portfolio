// Jacob Schwartz 9/27/18
// Etch A Sketch

int x, y;

void setup() {
  size(500, 500);
  frameRate(10);
  background(255);
  //Set start coords
  x=width/2;
  y=height/2;
}

void draw() {
  fill(255);
  strokeWeight(2);
  //drawName();
  //noLoop();
}


//Algorithm for your first name
void drawName() {
  moveRight(5);
  moveDown(2);
  //letter J
  moveRight(10);
  moveLeft(5);
  moveDown(10);
  moveLeft(5);
  moveUp(3);
  moveDown(3);
  moveRight(5);
  moveUp(10);
  moveRight(5);
  //letter A
  moveDown(10);
  moveUp(10);
  moveRight(5);
  moveDown(5);
  moveLeft(5);
  moveRight(5);
  moveDown(5);
  //letter C
  moveRight(3);
  moveUp(10);
  moveRight(5);
  moveLeft(5);
  moveDown(10);
  moveRight(8);
  //letter O
  moveRight(5);
  moveUp(10);
  moveLeft(5);
  moveDown(10);
  moveRight(8);
  //letter B
  moveUp(10);
  moveRight(5);
  moveDown(5);
  moveLeft(5);
  moveRight(8);
  moveDown(5);
  moveLeft(8);
}

//Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

//Method to draw down line
void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

//Method to draw left line
void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}

//Method to draw up line
void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

//Method to draw right down
void moveRD(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

//Method to draw right up
void moveRU(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y-i);
  }
  x=x+(10*rep);
  y=y-(10*rep);
}

//Method to draw left up
void moveLU(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y-i);
  }
  x=x-(10*rep);
  y=y-(10*rep);
}

//Method to draw left down
void moveLD(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y+i);
  }
  x=x-(10*rep);
  y=y+(10*rep);
}

void mouseClicked() {
  saveFrame("line-######.png");
}

//== is a comparison
// || means or
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(1);
    } else if (keyCode == DOWN) {
      moveDown(1);
    } else if (keyCode == RIGHT) {
      moveRight(1);
    } else if (keyCode == LEFT) {
      moveLeft(1);
    }
  } else if (key == ' ') {
    background(255);
  } else if (key == 'r'|| key == 'R') {
    stroke(random(255), random(255), random(255));
  } else if (key == 'w' || key == 'W') {
    moveRU(1);
  } else if (key == 'q' || key == 'Q') {
    moveLU(1);
  } else if (key == 's' || key == 'S') {
    moveRD(1);
  } else if (key == 'a' || key == 'A') {
    moveLD(1);
  }
}
