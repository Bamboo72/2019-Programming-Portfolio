// Jacob Schwartz 10/24/18
// ScreenSaver App

Line l1;
Line[] lines = new Line[5];

void setup() {
  background(0);
  size(displayWidth,displayHeight);
   stroke(255);
   l1 = new Line(int(random(width)),int(random(height)));
   for(int i=0; i<lines.length; i++){
    lines[i] = new Line(int(random(width)),int(random(height)));
   }
}

void draw() {
  if(frameCount>700){
    background(0);
    frameCount=0;
  }
  l1.display();
  for(int i=0; i<lines.length; i++){
    lines[i].display();
   }
    }
