class SpaceShip {

  // Member variable
  int x, y, r, lives, health;
  float speed;
  color c;
  boolean alive;

  // Constructor
  SpaceShip(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
    health = 0;
    lives = 3;
    speed = 5;
    alive = false;
    c = color(205, 0, 255);
  }

  //AsEnemy(){
  //}

  // Display Method
  void display(int x, int y) {
    
      //guns
      fill(255, 255, 100);
      noStroke();
      rect(x-25, y, 3, 10);
      rect(x+25, y, 3, 10);
      //decor
      fill(255, 255, 100);
      strokeWeight(0.5);
      stroke(100);
      ellipse(x+0.5, y, 25, 35);
      triangle(x, y-15, x-35, y+10, x+35, y+10);
      triangle(x, y-34, x+10, y, x-9, y);
      //main body
      fill(c);
      strokeWeight(2);
      triangle(x, y-10, x-30, y+10, x+30, y+10);
      ellipse(x, y, 20, 30);
      strokeWeight(1);
      triangle(x, y-30, x+5, y, x-5, y);
      //windows
      stroke(100);
      fill(150, 250, 255);
      //fill(random(255),random(255),random(255));
      //noStroke();
      ellipse(x, y-5, 20, 10);
      ellipse(x-6, y+5, 5, 5);
      ellipse(x+6, y+5, 5, 5);
      ellipse(x, y+5, 5, 5);
      //thrusters
      fill(200);
      strokeWeight(2);
      rectMode(CENTER);
      rect(x-8, y+15, 5, 10);
      rect(x, y+15, 5, 10);
      rect(x+8, y+15, 5, 10);
      //flame
      fill(random(225, 255), random(150, 255), 0);
      noStroke();
      stroke(random(225, 255), random(150, 255), 0);
      ellipse(x-8, y+20, 5, random(5, 8));
      ellipse(x, y+20, 5, random(5, 8));
      ellipse(x+8, y+20, 5, random(5, 8));
  }
    
     
     void displayExplode(int x, int y){
      stroke(255, 0, 0);
      fill(255, 255, 0, 100);
      beginShape();
      vertex(x, mouseY-26);
      vertex(x+4, mouseY-4);
      vertex(x+14, mouseY-14);
      vertex(x+6, mouseY-6);
      vertex(x+26, mouseY);
      vertex(x+6, mouseY+6);
      vertex(x+14, mouseY+14);
      vertex(x+4, mouseY+4);
      vertex(x, mouseY+26);
      vertex(x-4, mouseY+4);
      vertex(x-14, mouseY+14);
      vertex(x-6, mouseY+6);
      vertex(x-26, mouseY);
      vertex(x-6, mouseY-6);
      vertex(x-14, mouseY-14);
      vertex(x-4, mouseY-4);
      endShape(CLOSE);
      }

  // Behavior Methods
  void thrust() {
  }

  void move() {

    return;
  }

  void keyPressed() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        x -= 10;
      } else if (keyCode == RIGHT) {
        x += 10;
      }
    }
  }
}
