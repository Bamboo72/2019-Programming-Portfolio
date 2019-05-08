// Jacob Schwartz 10/2/18
// temperature converter

void setup() {
  size(300, 200);
  frameRate(30);
  noCursor();
}

void draw() {
  background(255);
  fill(0);

  for (int i=10; i<width; i+=20) {
    line(i, 30, i, 40);
    textSize(8);
    textAlign(CENTER);
    text(i-10, i, 25);
  }
  textAlign(LEFT);
  textSize(16);
  text("Cel: " + mouseX + " = Far: " + celToFar(mouseX), 10, 65);
   text("Far: " + mouseX + " = Cel: " + farToCel(mouseX), 10, 135);
  rect(10, 35, mouseX, 10);
  rect(10,100,mouseX,10);
  //println(celToFar(10));
  //println(farToCel(10));
}

float celToFar(float cel) {
  cel = cel*9/5+32;
  return cel;
}

float farToCel(float far) {
  far = (far-32)/1.8;
  return far;
}
