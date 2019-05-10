class Asteroid {

  // Member variable
  int x, y, w, h, r;
  float health, dir, speed;
  color c;
  boolean alive;

  // Constructor
  Asteroid(int x, int y, int r) {
    this.x = x;
    this.y = y;
    //this.w = w;
    //this.h = h;
    this.r = r;
    health = 100.0;
    speed = 5;
    dir = 0;
    alive = true;
  }

  // Display Method
  void display(int x, int y, int w, int h) {
    // base
    fill(200, 100, 0);
    stroke(150, 100, 100);
    ellipse(x, y, w, h);
    // craters
    //for(int i = 0; i < 5; i++){
    ellipse(x-5, y-2, w/10, h/16);
    ellipse(x+5, y+5, w/10, h/16);
    ellipse(x-9, y-20, w/10, h/16);
    ellipse(x-7, y+9, w/10, h/16);
    ellipse(x-15, y-2, w/10, h/16);
    ellipse(x+10, y-5, w/10, h/16);
    ellipse(x, y+21, w/10, h/16);
    ellipse(x+7, y+9, w/10, h/16);
    ellipse(x+20, y+10, w/10, h/16);
    ellipse(x-19, y+12, w/10, h/16);
    ellipse(x+8, y-20 ,w/10, h/16);
    // }
  }
  
  void attack(){}
  
  void reachedBottom(){}
}
