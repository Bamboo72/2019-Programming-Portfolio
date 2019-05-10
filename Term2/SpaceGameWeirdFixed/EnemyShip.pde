class EnemyShip {

  // Member variable
  int x, y, r;
  float health, dir, speed;
  color c;
  boolean alive;

  // Constructor
  EnemyShip(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
    health = 100.0;
    speed = 5;
    dir = 0;
    alive = true;
    c = color(255, 100, 0);
  }


  // Display Method
  void display(int x, int y) {
    //guns
    fill(250,0,0);
    noStroke();
    rect(x+25, y, 3, 10);
    rect(x-25, y, 3, 10);
    //decor
    //fill(255,100,0);
    fill(250,0,0);
    strokeWeight(0.5);
    //noStroke();
    stroke(75);
    ellipse(x+0.5, y, 25, 35);
    triangle(x, y+15, x+35, y-10, x-35, y-10);
    triangle(x+0.5, y+34, x-10, y, x+10, y);
    //main body
    fill(c);
    strokeWeight(2);
    triangle(x, y+10, x-30, y-10, x+30, y-10);
    ellipse(x, y, 20, 30);
    strokeWeight(1);
    triangle(x, y+30, x-5, y, x+5, y);
    //windows
    stroke(100);
    fill(150, 200, 255);
    //fill(random(255),random(255),random(255));
    //noStroke();
    ellipse(x, y+5, 20, 10);
    ellipse(x+6, y-5, 5, 5);
    ellipse(x-6, y-5, 5, 5);
    ellipse(x, y-5, 5, 5);
    //thrusters
    fill(200);
    strokeWeight(2);
    rectMode(CENTER);
    rect(x+8, y-15, 5, 10);
    rect(x, y-15, 5, 10);
    rect(x-8, y-15, 5, 10);
    //flame
    fill(0, random(100, 150), random(225, 255));
    noStroke();
    stroke(0, random(100, 150), random(225, 255));
    ellipse(x+8, y-21, 5, random(5, 8));
    ellipse(x, y-21, 5, random(5, 8));
    ellipse(x-8, y-21, 5, random(5, 8));
    
  }

  // Behavior Methods
  void attack(){
  
  }
  
}
