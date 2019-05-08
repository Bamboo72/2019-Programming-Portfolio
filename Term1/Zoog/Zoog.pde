void setup(){
  //Set the size of the window
  size(200,200);
}

void draw(){
  //Draw a white background
  background(255);
  drawZoog(mouseX, mouseY);
}

void drawZoog(int x, int y){
    //Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Draw Zoog's body
  stroke(0);
  fill(150);
  rect(x,y,20,100);
  
  //Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(x,y,60,60);
  
  //Draw Zoog's eyes
  fill(0);
  ellipse(x,y,16,32);
  ellipse(x,y,16,32);
  
  //Draw Zoog's legs
  stroke(0);
  line(x,y,80,160);
  line(x,y,120,160);
}
  
