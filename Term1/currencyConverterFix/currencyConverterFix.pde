//Jacob Schwartz 10/4/18
//Currency Converter try #2

// 0=US, 1=UK, 2=Japan
int x=0;
int y=0;

void setup() {
  size(550, 400);
}

void draw() {
  background(200, 250, 200);
  textAndShapes();
  numbers();
  drawUS();
  drawUK();
  drawJapan();
}

void textAndShapes() {
  textSize(40);
  textAlign(CENTER);
  fill(0);
  text("Currency Converter", width/2, 50);
  textSize(20);
  text("Made By Jacob Schwartz", width/2, 80);
  textSize(10);
  text("*please note that currency conversions are subject to change, and these were made October of 2018", width/2, 95);
  textAlign(LEFT);
  textSize(20);
  text("Use the mouse to enter a value:", 20, 155);
  fill(255);
  rect(0, 165, width, 40);
  fill(0);
  textSize(15);
  textAlign(CENTER);
  fill(100, 255, 100);
  rect(width/2-220, 250, 140, 30);
  rect(width/2+65, 250, 207, 30);
  rect(width/2-200, 300, 405, 50);
  fill(0);
  text("Click the boxes to swap:\n US American Dollars, UK English Pounds, Japanese Yen", width/2, 320);
  rect(width/2-60, 260, 90, 10);
  triangle(width/2+10, 250, width/2+10, 280, width/2+40, 265);
}

void numbers() {
  for (int i=10; i<width; i+=20) {
    line(i, 180, i, 185);
    fill(0);
    textSize(9);
    textAlign(CENTER);
    text(i-10, i, 175);
  }
}

void drawUS() {
  if (x == 0) {
    textAlign(LEFT);
    textSize(15);
    text(mouseX + " US dollars", width/2-210, 270);
    if (y == 1) {
      text(ustouk(mouseX) + " = UK pounds", width/2+75, 270);
    } else if (y == 2) {
      text(ustojap(mouseX) + " = Japanese yen", width/2+75, 270);
    } else if (y == 0) {
      text(ustous(mouseX) + " = US dollars", width/2+75, 270);
    }
    fill(100, 255, 100);
    rect(10, 185, mouseX, 10);
  }
}

void drawUK() {
  if (x == 1) {
    textAlign(LEFT);
    textSize(15);
    text(mouseX + " UK pounds", width/2-210, 270);
    if (y == 1) {
      text(uktouk(mouseX) + " = UK pounds", width/2+75, 270);
    } else if (y == 2) {
      text(uktojap(mouseX) + " = Japanese yen", width/2+75, 270);
    } else if (y == 0) {
      text(uktous(mouseX) + " = US dollars", width/2+75, 270);
    }
    fill(100, 255, 100);
    rect(10, 185, mouseX, 10);
  }
}

void drawJapan() {
  if (x == 2) {
    textAlign(LEFT);
    textSize(15);
    text(mouseX + " Japanese yen", width/2-210, 270);
    if (y == 1) {
      text(japtouk(mouseX) + " = UK pounds", width/2+75, 270);
    } else if (y == 2) {
      text(japtojap(mouseX) + " = Japanese yen", width/2+75, 270);
    } else if (y == 0) {
      text(japtous(mouseX) + " = US dollars", width/2+75, 270);
    }
    fill(100, 255, 100);
    rect(10, 185, mouseX, 10);
  }
}

float ustouk(float us) {
  us = us*0.76;
  return us;
}

float uktous(float uk) {
  uk = uk*1.3;
  return uk;
}

float ustojap(float us) {
  us = us*113.84;
  return us;
}

float japtous(float jap) {
  jap = jap*0.0088;
  return jap;
}

float uktojap(float uk) {
  uk = uk*149.27;
  return uk;
}

float japtouk(float jap) {
  jap = jap*0.0067;
  return jap;
}

float ustous(float us) {
  us = us*1;
  return us;
}

float uktouk(float uk) {
  uk = uk*1;
  return uk;
}

float japtojap(float jap) {
  jap = jap*1;
  return jap;
}

void mouseClicked() {
  if (mouseX>75 && mouseX<215 && mouseY>250 && mouseY<280) {
    if (x ==0 || x == 1) {
      x += 1;
    } 
   else if (x == 2) {
      x = 0;
    }
  } else if (mouseX>340 && mouseX<547 && mouseY>250 && mouseY<280) {
    if (y ==0 || y == 1) {
      y += 1;
    } 
    else if (y == 2) {
      y = 0;
    }
  }
}
