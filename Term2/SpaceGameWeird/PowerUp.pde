class PowerUp {

  // Member variables
  int x, y, type;
  float speed;
  Boolean reachedBottom;

  // Constructor
  PowerUp(int x, int y, int type) {
    this.x = x;
    this.y = y;
    this.type = type;
    speed = 2;
    type = 1;
  }

  // Display method
  void display(int type) {
    //life
    if (type == 1) {
      fill(255, 0, 0);
  stroke(100,200,200);
  arc(x-10, y-5, 20, 20, PI, TWO_PI);
  arc(x+10, y-5, 20, 20, PI, TWO_PI);
  beginShape();
  vertex(x-20, y-5);
  vertex(x-20, y);
  vertex(x, y+20);
  vertex(x+20, y);
  vertex(x+20, y-5);
  endShape();
    } 
    //laser boost
    if (type == 2) {
      fill(0, 255, 255);
      stroke(0, 0, 220);
      triangle(x+15, y, x-15, y, x, y-15);
      rect(x, y+5, 15, 10);
    } 
    //explosion
    if (type == 3) {
      fill(255, 255, 0);
      stroke(255, 0, 0);
      beginShape();
      vertex(x, y-15);
      vertex(x+3, y-3);
      vertex(x+15, y);
      vertex(x+3, y+3);
      vertex(x, y+15);
      vertex(x-3, y+3);
      vertex(x-15, y);
      vertex(x-3, y-3);
      endShape(CLOSE);
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

  //void keyPressed() {
  //  if (key == 1) {
  //    type = 1;
  //  }
  //  if (key == 2) {
  //    type = 2;
  //  }
  //  if (key == 3) {
  //    type = 3;
  //  }
  //}

}
