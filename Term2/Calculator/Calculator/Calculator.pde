//Jacob Schwartz 10/31/18 //<>// //<>//
//Calculator program

//yt link: https://www.youtube.com/watch?v=GdzrrWA8e7A

//colors:
//green:109,135,100
//yellow:227,200,0
//gray:100,118,135
//red:162,0,37
//blue:177,221,240
//brown:160,82,45

//Decimal = 0, Negative = 1, Addition = 2, Subtraction = 3, Multiplication = 4, Division = 5, Left Arrow = 6, Right Arrow = 7, Square root = 8, Square = 9, ? = 10, Enter = 11, Clear = 12

Button[] numBtns = new Button[10];
Button[] opBtns = new Button[12];
Button triforce;

PFont font;
String displayVal, leftVal, rightVal;
char opVal;
float result;
boolean firstNum, dec;

void setup() {

  size(500, 700);
  font = loadFont("HyliaSerifBeta-Regular-48.vlw");
  textFont(font);

  displayVal = "";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;

  triforce = new Button(217, 627, 66, 50, color(109,135,100), 1).asTriforce(true, "");

  // Numbers
  numBtns[0] = new Button(50, 500, 60, 60, color(100, 118, 135), 30).asNumber(0);
  numBtns[1] = new Button(50, 410, 60, 60, color(100, 118, 135), 30).asNumber(1);
  numBtns[2] = new Button(160, 410, 60, 60, color(100, 118, 135), 30).asNumber(2);
  numBtns[3] = new Button(270, 410, 60, 60, color(100, 118, 135), 30).asNumber(3);
  numBtns[4] = new Button(50, 320, 60, 60, color(100, 118, 135), 30).asNumber(4);
  numBtns[5] = new Button(160, 320, 60, 60, color(100, 118, 135), 30).asNumber(5);
  numBtns[6] = new Button(270, 320, 60, 60, color(100, 118, 135), 30).asNumber(6);
  numBtns[7] = new Button(50, 230, 60, 60, color(100, 118, 135), 30).asNumber(7);
  numBtns[8] = new Button(160, 230, 60, 60, color(100, 118, 135), 30).asNumber(8);
  numBtns[9] = new Button(270, 230, 60, 60, color(100, 118, 135), 30).asNumber(9);

  // operative
  opBtns[0] = new Button( 160, 500, 60, 60, color(100, 118, 135), 30).asOperator(".");
  opBtns[1] = new Button( 270, 500, 60, 60, color(100, 118, 135), 30).asOperator("±");
  opBtns[2] = new Button( 370, 500, 60, 60, color(227, 200, 0), 40).asOperator("+");
  opBtns[3] = new Button( 370, 410, 60, 60, color(227, 200, 0), 40).asOperator("-");
  opBtns[4] = new Button( 370, 320, 60, 60, color(227, 200, 0), 30).asOperator("×");
  opBtns[5] = new Button( 370, 230, 60, 60, color(227, 200, 0), 30).asOperator("÷");
  opBtns[6] = new Button( 370, 170, 60, 40, color(227, 200, 0), 20).asOperator("DEL");
  opBtns[7] = new Button( 270, 170, 60, 40, color(227, 200, 0), 25).asOperator("√");
  opBtns[8] = new Button( 160, 170, 60, 40, color(227, 200, 0), 10).asOperator("x");
  opBtns[9] = new Button( 50, 170, 60, 40, color(160, 82, 45), 20).asOperator("?");
  opBtns[10] = new Button( 50, 580, 70, 60, color(162, 0, 37), 20).asOperator("CLEAR");
  opBtns[11] = new Button( 370, 580, 70, 60, color(227, 200, 0), 20).asOperator("ENTER");
}


void draw() {
  background(200);

  backgroundThings();

  for (int i=0; i<numBtns.length; i++) {
    textAlign(CENTER, CENTER);
    numBtns[i].display();
    numBtns[i].hover();
  }

  for (int i=0; i<opBtns.length; i++) {
    textAlign(CENTER, CENTER);
    opBtns[i].display();
    opBtns[i].hover();
  }

  triforce.display();
  triforce.hover();
  fill(227, 200, 0);
  triangle(250, 630, 220, 670, 280, 670);
  fill(0);
  triangle(235, 650, 265, 650, 250, 670);

  updateDisplay();
  randomGen();
}

void updateDisplay() {
  fill(177, 221, 240);
  rect(50, 50, 400, 100);
  fill(0);
  textSize(40);

  switch(displayVal.length()) {
 default:
 textSize(40);
 break;
    case 5:
    textSize(38);
    break;
  case 6:
    textSize(36);
    break;
   case 7:
    textSize(34);
    break;
  case 8:
    textSize(30);
    break;
  case 9:
    textSize(28);
    break;
    case 10:
    textSize(26);
    break;
    case 11:
    textSize(20);
    break;
    case 12:
    textSize(18);
    break;
    case 13:
    textSize(18);
    break;
    case 14:
    textSize(18);
    break;
    case 15:
    textSize(18);
    break;
      }
    text(displayVal, 360, 100);

}

void randomGen() {
  for (int i=0; i<opBtns.length; i++) {
    if (opBtns[i].hov) {
      if (opBtns[i].op == "?") {
        textSize(20);
        text("Press for a random button 0-100", width/2, 40);
      }
    }
  }
}

void mouseReleased() {

  if (triforce.hov) {
    link("https://www.youtube.com/watch?v=GdzrrWA8e7A");
  }

  //Numbers
  for (int i=0; i<numBtns.length; i++) {
    if (numBtns[i].hov) {
      if (firstNum) {
        leftVal += str(numBtns[i].v);
        displayVal = leftVal;
      } else {
        rightVal += str(numBtns[i].v);
        displayVal = rightVal;
      }
    }
  }
  //Operators
  for (int i=0; i<opBtns.length; i++) {
       
    if (opBtns[i].hov) {
      // addition
      if (opBtns[i].op == "+") {
        opVal = '+';
        firstNum = false;
        dec = false;
        displayVal = "+";
      } 
      // subtraction
      if (opBtns[i].op == "-") {
        opVal = '-';
        firstNum = false;
                dec = false;
        displayVal = "-";
      } 
      // multiplication
      if (opBtns[i].op == "×") {
        opVal = '*';
        firstNum = false;
                dec = false;
        displayVal = "×";
      } 
      // division
      if (opBtns[i].op == "÷") {
        opVal = '/';
        firstNum = false;    
        dec = false;
        displayVal = "÷";
      } 
      // enter button
      else if (opBtns[i].op == "ENTER") {
        performCalc();
      } 
      //clear button
      else if (opBtns[i].op == "CLEAR") {
        reset();
      }
      //decimal button
      else if (opBtns[i].op == ".") {
        if (!dec) {
          if (firstNum) {
            leftVal += opBtns[i].op;
            displayVal = leftVal;
            dec = true;
          } else {
            rightVal += opBtns[i].op;
            displayVal = rightVal;
            dec = true;
          }
        }
        
        // if(displayVal.indexOf('.')>0){
        //dec = true;
        //} else {
        //dec = false;
        //}
        
      }
      //negative button
      else if (opBtns[i].op == "±") {
        if (firstNum) {
          leftVal = str(float(leftVal) * -1);
          displayVal = leftVal;
        } else {
          rightVal = str(float(rightVal) * -1);
          displayVal = rightVal;
        }
      }
      //square root button
      else if (opBtns[i].op == "√") {
        if (firstNum) {
          leftVal = str(sqrt(float(leftVal)));
          displayVal = leftVal;
        } else {
          rightVal = str(sqrt(float(rightVal)));
          displayVal = rightVal;
        }
      }
      //square button
      else if (opBtns[i].op == "x") {
        if (firstNum) {
          leftVal = str(sq(float(leftVal)));
          displayVal = leftVal;
        } else {
          rightVal = str(sq(float(rightVal)));
          displayVal = rightVal;
        }
      }
      //? button
      else if (opBtns[i].op == "?") {
        if (firstNum) {
          leftVal = str(random(0.0, 100.0));
          displayVal = leftVal;
        } else {
          rightVal = str(random(0.0, 100.0));
          displayVal = rightVal;
        }
      }
      //delete button
      else if (opBtns[i].op == "DEL") {
        if (firstNum) {
          if (leftVal.length()> 0) {
            leftVal = leftVal.substring(0, leftVal.length() -1);
            displayVal = leftVal;
          }
        } else {
          if (leftVal.length() > 0) {
            rightVal = rightVal.substring(0, rightVal.length() -1);
            displayVal = rightVal;
          }
        }
        
        if(displayVal.indexOf('.')>0){
        dec = true;
        } else {
        dec = false;
        }
        
      }          
    }
  }
}

void performCalc() {

  //addition
  if (opVal == '+') {
        result = float(leftVal) + float(rightVal);
    displayVal = str(result);
  }

  //subtraction
  else if (opVal == '-') {
    result = float(leftVal) - float(rightVal);
    displayVal = str(result);
  }

  //multiplication
  else if (opVal == '*') {
    result = float(leftVal) * float(rightVal);
    displayVal = str(result);
  }

  //division
  else if (opVal == '/') {
    result = float(leftVal) / float(rightVal);
    displayVal = str(result);
  }

  leftVal = displayVal;
  firstNum = true;
  dec = false;
}


void reset() {
  displayVal = "";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;
}

void backgroundThings() {
  //Backboard things
  fill(109, 135, 100);
  rect(10, 5, 480, 690, 75);

  textSize(18);
  fill(0);
  text("Calculator \n \n made by Jacob Schwartz", 250, 600);
}

void keyPressed() {
  if (key == '0') {
    handleKeyPress(true, "0");
  }
  if (key == '1') {
    handleKeyPress(true, "1");
  }
  if (key == '2') {
    handleKeyPress(true, "2");
  }
  if (key == '3') {
    handleKeyPress(true, "3");
  }
  if (key == '4') {
    handleKeyPress(true, "4");
  }
  if (key == '5') {
    handleKeyPress(true, "5");
  }
  if (key == '6') {
    handleKeyPress(true, "6");
  }
  if (key == '7') {
    handleKeyPress(true, "7");
  }
  if (key == '8') {
    handleKeyPress(true, "8");
  }
  if (key == '9') {
    handleKeyPress(true, "9");
  }
  if (key == '+') {
    handleKeyPress(false, "+");
  }
  if (key == '-') {
    handleKeyPress(false, "-");
  }
  if (key == '*') {
    handleKeyPress(false, "×");
  }
  if (key == '/') {
    handleKeyPress(false, "÷");
  }
  if (key == ENTER) {
    handleKeyPress(false, "ENTER");
  }
  if (key == 'c' || key == 'C') {
    handleKeyPress(false, "CLEAR");
  }
  if (key == '.') {
    handleKeyPress(false, ".");
  }
}


void handleKeyPress(boolean num, String val) {

  if (num) {

    if (firstNum) {
      leftVal += val;
      displayVal = leftVal;
    } else {
      rightVal += val;
      displayVal = rightVal;
    }
  } else {
    if (val == "+") {
      opVal = '+';
      displayVal = "+";
      firstNum = false;
      dec = false;
    } else if (val == "-") {
      opVal = '-';
      displayVal = "-";
      firstNum = false;
      dec = false;
    } else if (val == "÷") {
      opVal = '/';
      displayVal = "÷";
      firstNum = false;
      dec = false;
    } else if (val == "×") {
      opVal = '*';
      displayVal = "×";
      firstNum = false;
      dec = false;
    } else if (val == "ENTER") {
      performCalc();
      firstNum = false;
      dec = false;
    } else if (val == "CLEAR") {
      reset();
      firstNum = false;
      dec = false;
    }
    // else if (val == ".") {
    //  opVal = '.';
    //  if (!dec) {
    //      if (firstNum) {
    //        leftVal += opVal;
    //        displayVal = leftVal;
    //        dec = true;
    //      } else {
    //        rightVal += opVal;
    //        displayVal = rightVal;
    //        dec = true;
    //      }
    //    }
    //  firstNum = false;
    //  dec = false;
    //}
  }
}
