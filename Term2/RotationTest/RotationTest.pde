//Jacob Schwartz 12/31/18
// rotation test

int t = 0, r = 0, l = 0;
void setup() {
  size( 500, 500);
}

void draw() {
  noStroke();
  //background(255);
  fill(255);
  triangle(0, height/2, width/2, height, 0, height);
  triangle(width, height/2, width/2, 0, width, 0);

  rectMode(CENTER);
  translate(width/2, height/2);

  turn();
  turn2();
  turn3();
}

void turn() {

  resetMatrix();
  translate(width/2, height/2);

  pushMatrix();
  fill(0, 0, 255, 100);
  rotate(radians(r));
  ellipse(0, 0, 200, 150);
  popMatrix();

  fill(255);
  ellipse(0, 0, 120, 120);

  pushMatrix();
  fill(255, 0, 0, 100);
  rotate(radians(l)); 
  ellipse(0, 0, 180, 150);
  popMatrix();

  fill(255);
  ellipse(0, 0, 120, 120);

  //turn right 

  pushMatrix();
  fill(0, 0, 255, 100);
  rotate(radians(r));

  rect(0, 0, 30, 30, 10);

  rect(0, 50, 10, 10);
  rect(0, -50, 10, 10);
  rect(50, 0, 10, 10);
  rect(-50, 0, 10, 10);

  rotate(radians(-60));
  rect(25, 25, 5, 20);
  rect(-25, 25, 20, 5);
  rect(25, -25, 20, 5);
  rect(-25, -25, 5, 20);
  rotate(radians(60));

  r += 1;
  popMatrix();

  // turn left

  pushMatrix();
  fill(255, 0, 0, 100);
  rotate(radians(l)); 

  rect(0, 0, 40, 40, 10);

  rect(0, 50, 10, 10);
  rect(0, -50, 10, 10);
  rect(50, 0, 10, 10);
  rect(-50, 0, 10, 10);

  rotate(radians(60));
  rect(25, 25, 20, 5);
  rect(-25, 25, 5, 20);
  rect(25, -25, 5, 20);
  rect(-25, -25, 20, 5);
  rotate(radians(-60));

  l -= 1;
  popMatrix();
}

void turn2() {

  translate(-150, -150);

  pushMatrix();
  fill(0, 0, 255, 100);
  rotate(radians(r));
  ellipse(0, 0, 180, 150);
  popMatrix();

  fill(255);
  ellipse(0, 0, 120, 120);

  translate(300, 300);

  pushMatrix();
  fill(255, 0, 0, 100);
  rotate(radians(l)); 
  ellipse(0, 0, 180, 150);
  popMatrix();

  fill(255);
  ellipse(0, 0, 120, 120);

  //turn right 

  translate(-300, -300);

  pushMatrix();
  fill(0, 0, 255, 100);
  rotate(radians(r));

  rect(0, 0, 40, 40, 10);

  rect(0, 50, 10, 10);
  rect(0, -50, 10, 10);
  rect(50, 0, 10, 10);
  rect(-50, 0, 10, 10);

  rotate(radians(-60));
  rect(25, 25, 5, 20);
  rect(-25, 25, 20, 5);
  rect(25, -25, 20, 5);
  rect(-25, -25, 5, 20);
  rotate(radians(60));

  rotate(radians(45));

  rect(0, 0, 40, 40, 10);

  rect(0, 50, 10, 10);
  rect(0, -50, 10, 10);
  rect(50, 0, 10, 10);
  rect(-50, 0, 10, 10);

  rotate(radians(-60));
  rect(25, 25, 5, 20);
  rect(-25, 25, 20, 5);
  rect(25, -25, 20, 5);
  rect(-25, -25, 5, 20);
  rotate(radians(60));

  r += 1;
  popMatrix();

  // turn left

  translate(300, 300);

  pushMatrix();
  fill(255, 0, 0, 100);
  rotate(radians(l)); 

  rect(0, 0, 40, 40, 10);

  rect(0, 50, 10, 10);
  rect(0, -50, 10, 10);
  rect(50, 0, 10, 10);
  rect(-50, 0, 10, 10);

  rotate(radians(60));
  rect(25, 25, 20, 5);
  rect(-25, 25, 5, 20);
  rect(25, -25, 5, 20);
  rect(-25, -25, 20, 5);
  rotate(radians(-60));

  rotate(radians(45));

  rect(0, 0, 40, 40, 10);

  rect(0, 50, 10, 10);
  rect(0, -50, 10, 10);
  rect(50, 0, 10, 10);
  rect(-50, 0, 10, 10);

  rotate(radians(60));
  rect(25, 25, 20, 5);
  rect(-25, 25, 5, 20);
  rect(25, -25, 5, 20);
  rect(-25, -25, 20, 5);
  rotate(radians(-60));

  l -= 1;
  popMatrix();
}

void turn3() {

  resetMatrix();
  translate(width/2, height/2);

  translate(90, 90);

  pushMatrix();
  fill(0, 255, 255, 100);
  rotate(radians(r));
  ellipse(10, 0, 120, 120);
  triangle(30, -30, -30, -30, 0, 0);
  triangle(-30, 30, 30, 30, 0, 0);
  popMatrix();

  translate(-180, -180);

  pushMatrix();
  fill(255, 100, 0, 100);
  rotate(radians(l)); 
  ellipse(10, 0, 120, 120);
  triangle(30, -30, -30, -30, 0, 0);
  triangle(-30, 30, 30, 30, 0, 0);
  popMatrix();

  //turn right 

  translate(180, 180);

  pushMatrix();
  fill(0, 0, 255, 100);
  rotate(radians(r));

  //rect(0, 20, 10, 30);
  //rect(0, -20, 10, 30);
  //rect(20, 0, 30, 10);
  //rect(-20, 0, 30, 10);

  rectMode(LEFT);
  rotate(radians(45));
  rect(0, 0, 5, 40);
  rotate(radians(90));
  rect(0, 0, 5, 40);
  rotate(radians(90));
  rect(0, 0, 5, 40);
  rotate(radians(90));
  rect(0, 0, 5, 40);
  //rotate(radians(360));
  rectMode(CENTER);

  r += 1;
  popMatrix();

  // turn left

  translate(-180, -180);

  pushMatrix();
  fill(255, 0, 0, 100);
  rotate(radians(l)); 

  // rect(0, 20, 10, 30);
  //rect(0, -20, 10, 30);
  //rect(20, 0, 30, 10);
  //rect(-20, 0, 30, 10);

  rectMode(LEFT);
  rotate(radians(45));
  rect(0, 0, 5, 40);
  rotate(radians(90));
  rect(0, 0, 5, 40);
  rotate(radians(90));
  rect(0, 0, 5, 40);
  rotate(radians(90));
  rect(0, 0, 5, 40);
  //rotate(radians(360));
  rectMode(CENTER);

  l -= 1;
  popMatrix();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      r += 5;
      l -= 3;
    }
    if (keyCode == LEFT) {
      l -= 5;
      r += 3;
    }
  }
}

//void mousePressed() {
//  if (mousePressed) {
//    t += 45;
//  }
//}
