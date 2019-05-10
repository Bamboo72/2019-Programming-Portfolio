class Star {

  // Member variables
  int x, y, w;
  float speed;
  Boolean go;
  color c;

  // Constructor
  Star(int x, int y) {
    this.x = x;
    this.y = y;
    speed = 2;
    go = false;
  }

  Star go() {
    go = true;
    return this;
  }

  // Display method
  void display() {
    if (go) {
      text("GO!", width/2, 0);
    } else {
      stroke(c);
      point(x, y);
    }
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height) {
      return true;
    } else {
      return false;
    }
  }
}
