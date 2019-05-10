class Button {

  // member variables
  int x, y, w, h, v; // xpos, ypos, width, height, value
  String op; //operator
  color c; 
  boolean hov, num;

  // multiple constructors
  Button (int x, int y, int w, int h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    hov = false;
  }

  Button asNumber(int v) {
    this.v = v;
    num = true;
    return this;
  }

  Button asOperator(String op) {
    this.op = op;
    num = false;
    return this;
  }

  // display method
  void display() {
    if (num) {
      //I dislike alligning the rectagles to CENTER, so I just shifted the x and y coords of the text
      // NOTE: may have to revert to rectMode(CENTER);
      // rectMode(CENTER);
      fill(c);
      rect(x, y, w, h);
      fill(0);
      text(v, x+30, y+30);
    } else {
      //I dislike alligning the rectagles to CENTER, so I just shifted the x and y coords of the text
      // NOTE: may have to revert to rectMode(CENTER);
      // rectMode(CENTER);
      fill(c);
      rect(x, y, w, h);
      fill(0);
      text(op, x+30, y+30);
    }
  }

  // mouse detection (hover method)
  
}
