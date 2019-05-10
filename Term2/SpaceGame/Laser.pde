class Laser {

  // Member variables
  int x, y, w, h;
  float dir, speed;
  boolean active, friendly;
  color c;

  // Constructor
  Laser(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    dir = 0;
    speed = 5;
    active = false;
    friendly = true;
  }

  // Display method
  void display() {
    rect(x, y, w, h);
  }
}
