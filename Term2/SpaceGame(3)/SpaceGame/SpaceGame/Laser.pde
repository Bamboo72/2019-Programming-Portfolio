class Laser {

  // Member variables
  int x, y, w, h;
  float dir, speed;
  boolean active;
  color c;

  // Constructor
  Laser(int x, int y) {
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
    c = color(0, 200, 255);
    fill(c);
    stroke(255, 255, 200);
    strokeWeight(1);
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void shoot() {
    y -= speed;
  }

  boolean reachedTop() {
    if (y < 0 -h) {
      return true;
    } else {
      return false;
    }
  }
}
