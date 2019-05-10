class PowerUp {

  // Member variables
  int x, y, type;
  float speed;

  // Constructor
  PowerUp(int x, int y) {
    this.x = x;
    this.y = y;
    speed = 5;
    type = 1;
  }

  // Display method
  void display(int type) {
    //life
    if (type == 1) {
      fill(255, 0, 0);
      stroke(0);
      beginShape();
      vertex(x, y+40);
      vertex(x-40, y);
      curveVertex(x-35, y-26);
      curveVertex(x-28, y-28);
      curveVertex(x-21, y-29);
      curveVertex(x-14, y-28);
      curveVertex(x-7, y-26);
      curveVertex(x, y-15);
      curveVertex(x+7, y-26);
      curveVertex(x+14, y-28);
      curveVertex(x+21, y-29);
      curveVertex(x+28, y-28);
      curveVertex(x+35, y-26);
      //arc(x-10, y-5, 21, 20, -PI/2, PI/2);
      
      vertex(x+40, y);
      endShape();
      //ellipse(x-10, y-5, 21, 20);
      //ellipse(x+10, y-5, 21, 20);
      //triangle(x-20, y, x+20, y, x, y+20);
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

//  void keyPressed() {
//    if (key == 1) {
//      type = 1;
//    }
//    if (key == 2) {
//      type = 2;
//    }
//    if (key == 3) {
//      type = 3;
//    }
//  }

}
