class Button {
  // Member variables
  float x, y, w, h;
  // Is the button on or off?
  boolean on;

  // Constructor
  // Constructor initializes all variables
  Button(float tempX, float tempY, float tempW, float tempH) {    
    x  = tempX;   
    y  = tempY;   
    w  = tempW;   
    h  = tempH;   
    on = false;  // Button always starts as off
     }

  // Display method
  void display(float r, float g, float b) {
    stroke(0);
    if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h && mousePressed) {
      fill(r,g,b);
               } 
         else {
      fill(127);
    }
    rect(x, y, w, h);
  }
}
