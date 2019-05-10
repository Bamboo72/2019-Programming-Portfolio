class Asteroid {

  // Member variable
  int x, y, w, h, r, health;
  float  dir, speed;
  color c;
  boolean alive;

  // Constructor
  Asteroid(int x, int y, int w, int h, int r, int health, float speed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.r = r;
    this.health = health;
    this.speed = speed;
    dir = 0;
    alive = true;
  }

  // Display Method
  void display() {
    // base
    fill(200, 100, 0);
    stroke(150, 100, 100);
    ellipse(x, y, w, h);
    // craters
    //for(int i = 0; i < 5; i++){
    ellipse(x-w/10, y-h/25, w/10, h/16);
    ellipse(x+w/10, y+h/10, w/10, h/16);
    ellipse(x-w/5.5, y-h/2.5, w/10, h/16);
    ellipse(x-w/7.14, y+h/5.5, w/10, h/16);
    ellipse(x-w/3.3, y-h/25, w/10, h/16);
    ellipse(x+w/5, y-h/10, w/10, h/16);
    ellipse(x, y+h/2.38, w/10, h/16);
    ellipse(x+w/7.14, y+h/5.5, w/10, h/16);
    ellipse(x+w/2.5, y+h/5, w/10, h/16);
    ellipse(x-w/2.63, y+h/4.16, w/10, h/16);
    ellipse(x+w/6.25, y-h/2.5 ,w/10, h/16);
    // }
  }
  
  void attack(){
  y += speed;
  }
  
  //void reachedBottom(){}
  boolean reachedBottom() {
    if (y > height + h) {
      return true;
    } else {
      return false;
    }
  }
}
