class Car {
  // Member variables aka Data
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // Constructor
  Car( color c, float xpos, float ypos, float xspeed) {
    this.c = c;
    this.xpos = xpos;
    this.ypos = ypos;
    this.xspeed = xspeed;
  }

  // Methods for behavior
  void display() {
    rectMode(CENTER);
    fill(0);
    rect(xpos-7, ypos, 5, 14);
    rect(xpos+7, ypos, 5, 14);
    fill(c);
    rect(xpos, ypos, 20, 10);
    fill(0, 0, 200, 200);
    rect(xpos, ypos, 8, 8);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width && ypos > width/2) {
      xpos = 0;
    } 
     if (xpos > width && ypos < width/2) {
      xpos = 0;
    } 
  }
}
