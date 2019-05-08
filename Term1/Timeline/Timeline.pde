//Computer History Timeline
//By Jacob Schwartz
// September 7, 2018

void setup() {
  size(900, 400);
  background(100);
}

void draw() {
  background(100);
  textSize(45);
  textAlign(CENTER);
  fill(255, 255, 0);
  text("Historic Computer Systems", width/2, 50);
  textSize(20);
  fill(205, 205, 0);
  text("By Jacob Schwartz", width/2, 75);
  strokeWeight(3);
  stroke(255, 255, 0);
  line(100, 210, 800, 210);

  //add 8 historic events
  //top things
  histEvent("Zuse Z3 - 1941", "Built in Germany by Zuse. \n It was the world's first \n working electromechanical \n computer. It used punched film and \n vacuum tubes to store data.", 100, 180, true);
  histEvent("Colossus \n Mark I - 1943", "Built in the UK by Tommy Flowers. \n It was the world's first electronic digital programmable computer. \n It used 1500 vacuum tubes and paper-tape input", 250, 180, true);
  histEvent("ENIAC - 1945", "Built in the US by John Mauchly and J. Presper Eckert. It was the first \n elecronic programmable computer built in the US. It was faster and more flexible than the Colossus. \n It used patch cables and switches, 18,000 vacuum tubes, 1,500 relays, and hundreds of thousands of resistors, capacititors, and inductors.", 400, 180, true);
  histEvent("Manchester \n Mark 1 - 1949", "Built in the UK by Frederic C. Williams and Tom Kilburn. \n It ran a program written to search for Mersenne primes error-free \n for nine hours. It was a pioneer in using index registers, and also used vacuum tubes.", 650, 180, true);
  //bottom things
  histEvent("Atanasoff-Berry \n Computer - 1942", "Built in the US by John Vincent Atanasoff \n and Clifford E. Berry. \n It was the first binary \n electronic calculating device. \n It used vacuum tube, with capacitators \n fixed in a rotating drum for memory", 180, 240, false);
  histEvent("Colossus \n Mark II - 1944", "Built in the UK by Allen Coombs.\n It was designed \n while the Mark I was being made. It is similar \n to the Mark I, but had many improvements. It used 2400 vacuum tubes.", 330, 240, false);
  histEvent("Manchester \n Baby - 1948", "Built in the UK by Frederic C. Williams, \n Tom Kilburn, and Geoff Tootill. \n It was the world's first electronic stored-program computer. It used the Williams tube, and a cathode ray tube.", 580, 240, false);
  histEvent("EDSAC - 1949", "Built in the UK by Maurice Wilkes. \n It was one of the first usefully operational \n electronic digital stored-program computers. It used mercury delay lines and vacuum tubes", 700, 240, false);
}

void histEvent(String name, String descr, int x, int y, boolean top) {
  stroke(200);
  textSize(15);  
  //textAlign(LEFT);
  fill(255, 255, 0);
  //determine top or bottom events
  if (top) {
    line(x, y, x+30, 210);
    text(name, x, y);
  } else {
    line(x, y, x+30, 210);
    text(name, x, y+15);
  }


  //find location of mouse for displaying description
  if (mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+30) {
    textSize(11);
    fill(205, 205, 0);
    if (top) {
      text(descr, x, y-70);
    } else {
      text(descr, x, y+55);
    }
  }
}
