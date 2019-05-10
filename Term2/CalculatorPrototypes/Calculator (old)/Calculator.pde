//Jacob Schwartz 10/31/18
//Calculator program

//colors:
//green:109,135,100
//yellow:227,200,0
//gray:100,118,135
//red:162,0,37
//blue:177,221,240
//brown:160,82,45

Button[] numBtns = new Button[10];
Button[] opBtns = new Button[13];

//Decimal = 0
//Negative = 1
//Addition = 2
//Subtraction = 3
//Multiplication = 4
//Division = 5
//Left Arrow = 6
//Right Arrow; = 7
//Square root; = 8
//Square = 9
//? = 10
//Enter = 11
//Clear; = 12

PFont font;

void setup() {
  size(500, 700);
  font = loadFont("HyliaSerifBeta-Regular-48.vlw");
  textFont(font);
  textSize(30);

  // Numbers 0-9
  numBtns[0] = new Button(50, 500, 60, 60, color(100, 118, 135)).asNumber(0);
  numBtns[1] = new Button(50, 410, 60, 60, color(100, 118, 135)).asNumber(1);
  numBtns[2] = new Button(160, 410, 60, 60, color(100, 118, 135)).asNumber(2);
  numBtns[3] = new Button(270, 410, 60, 60, color(100, 118, 135)).asNumber(3);
  numBtns[4] = new Button(50, 320, 60, 60, color(100, 118, 135)).asNumber(4);
  numBtns[5] = new Button(160, 320, 60, 60, color(100, 118, 135)).asNumber(5);
  numBtns[6] = new Button(270, 320, 60, 60, color(100, 118, 135)).asNumber(6);
  numBtns[7] = new Button(50, 230, 60, 60, color(100, 118, 135)).asNumber(7);
  numBtns[8] = new Button(160, 230, 60, 60, color(100, 118, 135)).asNumber(8);
  numBtns[9] = new Button(270, 230, 60, 60, color(100, 118, 135)).asNumber(9);

  // decimal, negative, and operations
  opBtns[0] = new Button( 160, 500, 60, 60, color(100, 118, 135)).asOperator(".");
  opBtns[1] = new Button( 270, 500, 60, 60, color(100, 118, 135)).asOperator("(-)");
  opBtns[2] = new Button( 370, 500, 60, 60, color(227, 200, 0)).asOperator("+");
  opBtns[3] = new Button( 370, 410, 60, 60, color(227, 200, 0)).asOperator("-");
  opBtns[4] = new Button( 370, 320, 60, 60, color(227, 200, 0)).asOperator("*");
  opBtns[5] = new Button( 370, 230, 60, 60, color(227, 200, 0)).asOperator("/");
  opBtns[6] = new Button( 370, 170, 30, 40, color(227, 200, 0)).asOperator("<-");
  opBtns[7] = new Button( 400, 170, 30, 40, color(227, 200, 0)).asOperator("->");
  opBtns[8] = new Button( 270, 170, 60, 40, color(227, 200, 0)).asOperator("√");
  opBtns[9] = new Button( 160, 170, 60, 40, color(227, 200, 0)).asOperator("s");
  opBtns[10] = new Button( 50, 170, 60, 40, color(160, 82, 45)).asOperator("?");
  opBtns[11] = new Button( 50, 580, 70, 60, color(162, 0, 37)).asOperator("CLEAR");
  opBtns[12] = new Button( 360, 580, 70, 60, color(227, 200, 0)).asOperator("ENTER");
}


void draw() {
  background(200);

  //Backboard things
  fill(109, 135, 100);
  rect(10, 5, 480, 690, 75);
  
  for (int i=0; i<numBtns.length; i++) {
    textAlign(CENTER, CENTER);
    fill(100, 118, 135);
    numBtns[i].display();
  }

  for (int i=0; i<opBtns.length; i++) {
    textAlign(CENTER, CENTER);
    fill(100, 118, 135);
    opBtns[i].display();
  }

  updateDisplay();
}

void updateDisplay() {
  fill(177, 221, 240);
  rect(50, 50, 400, 100);
  fill(0);
  text("0.0", 100, 100);
}
