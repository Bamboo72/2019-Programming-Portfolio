// Jacob Schwartz 10/16/18
// Making buttons - from the Arrays assignment

Button btn1;
Button btn2;
Button btn3;
Button btn4;


void setup() {
  size(400,400);
  btn1 = new Button(0,0,width/2,height/2);
  btn2 = new Button(0,height/2,width/2,height/2);
  btn3 = new Button(width/2,0,width/2,height/2);
  btn4 = new Button(width/2,height/2,width/2,height/2);
}

void draw(){
background(255);
btn1.display(255,0,0);
btn2.display(0,0,255);
btn3.display(255,255,0);
btn4.display(0,255,0);
}
