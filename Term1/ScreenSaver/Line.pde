class Line {
  // Member Variables
  float xpos, ypos, strokeW, pointCount;

  // Constructor
  Line(int xpos, int ypos) {
    this.xpos = xpos;
    this.ypos = ypos;
  }

  // Display method
  void display() {
    strokeW = 6;
    pointCount = random(width/50, width/25);
    //stroke(0);
    if (random(4)>3) {
      strokeWeight(strokeW+random(-3, 3));
      moveRight(xpos, ypos, pointCount);
    } else if (random(4)>2) {
      strokeWeight(strokeW+random(-3, 3));
      moveUp(xpos, ypos, pointCount);
    } else if (random(4)>1) {
      strokeWeight(strokeW+random(-3, 3));
      moveDown(xpos, ypos, pointCount);
    } else {
      strokeWeight(strokeW+random(-3, 3));
      moveLeft(xpos, ypos, pointCount);
    }
    if (xpos>width || xpos<0 || ypos>height || ypos<0) {
      xpos = random(width);
      ypos = random(height);
      stroke(random(255), random(255), random(255));
    }
  }

  // Movement methods
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY - i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY + i;
    }
  }
}
