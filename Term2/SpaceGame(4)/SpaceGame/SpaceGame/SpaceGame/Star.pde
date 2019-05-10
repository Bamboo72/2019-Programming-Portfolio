class Star {

  // Member variables
  int x, y, w;
  float speed;
  Boolean line;
  color c;

  // Constructor
  Star(int x, int y) {
    this.x = x;
    this.y = y;
    speed = 2;
    line = false;
  }

  Star asLine(int w) {
    this.w = w;
    line = true;
    return this;
  }

  // Display method
  void display() {
    if (line) {
      line(x, y, w, y);
    } else {
      c = color(255);
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
