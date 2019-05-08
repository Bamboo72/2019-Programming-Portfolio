//Jacob Schwartz 9/20/18
//attempting to make a moveable circle
float x, y;

void setup() {
  size(500, 500);
  frameRate(100);
  x = width/2;
  y = height/2;
}

void draw() {
  fill(255, 0, 0);
  background(255);
  ellipse(x, y, 50, 50);
  if (keyPressed == true) {
    keyPressed();
    background(255);
    ellipse(x, y, 50, 50);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y=y-5;
    } else if (keyCode == DOWN) {
      y=y+5;
    } else if (keyCode == RIGHT) {
      x=x+5;
    } else if (keyCode == LEFT) {
      x=x-5;
    }
  } else if (key == ' ') {
    x=width/2;
    y=height/2;
  }
}
