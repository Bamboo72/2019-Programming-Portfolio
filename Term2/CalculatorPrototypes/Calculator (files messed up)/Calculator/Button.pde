class Button {

  // member variables
  int x, y, w, h, v, ts; // xpos, ypos, width, height, value, textSize
  String op, url; //operator
  color c; 
  boolean hov, num;

  // multiple constructors
  Button (int x, int y, int w, int h, color c, int ts) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.ts = ts;
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
      //I dislike alligning the rectangles to CENTER, so I just shifted the x and y coords of the text
      // NOTE: may have to revert to rectMode(CENTER);
      // rectMode(CENTER);
      if (hov) {
        fill(c+100);
      } else {  
        fill(c);
      }
      rect(x, y, w, h);
      fill(0);
      textSize(ts);
      text(v, x+w/2, y+h/2);
    } else {
      if (hov) {
        fill(c+100);
      } else {  
        fill(c);
      }
      rect(x, y, w, h);
      fill(0);
      textSize(ts);
      text(op, x+w/2, y+h/2);
    }
  }

  // mouse detection (hover method)
  void hover() {
    hov = mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;
  }
}
