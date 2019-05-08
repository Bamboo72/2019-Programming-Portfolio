// Jacob Schwartz 9/25/18
// Draw a Spaceship

void setup() {
  size(75, 75);
  //size(600,700);
}

void draw() {
  background(0);
  noCursor();
  drawShip(width/2, height/2);
  //drawShip(mouseX,mouseY);
}

void drawShip(int x, int y) {

  //decor
  fill(255, 255, 100);
  strokeWeight(0.5);
  stroke(100);
  ellipse(x+0.5, y, 25, 35);
  triangle(x, y-15, x-35, y+10, x+35, y+10);
  triangle(x, y-34, x+10, y, x-9, y);
  //main body
  fill(205, 0, 255);
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
  //guns
  fill(255, 255, 100);
  noStroke();
  rect(x-25, y, 3, 10);
  rect(x+25, y, 3, 10);
}
