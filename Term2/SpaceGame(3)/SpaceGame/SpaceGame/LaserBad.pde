class LaserBad {

  // Member variables
  int x, y, w, h;
  float dir, speed;
  boolean active;
  color c;

  // Constructor
  LaserBad(int x, int y) {
    this.x = x;
    this.y = y;
    this.w = 2;
    this.h = 20;
    dir = 0;
    speed = 13;
    active = true;
  }

  // Display method
  void display() {
    c = color(255, 0, 0);
    fill(c);
    stroke(255, 255, 200);
    strokeWeight(1);
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void shoot() {
    y += speed;
  }

  boolean reachedTop() {
    if (y > height +h) {
      return true;
    } else {
      return false;
    }
  }
}
