//Jacob Schwartz 9/21/18

void setup() {
  size(1000, 1000);
  background(127);
}

void draw() {
  background(127);
  //make grid with a while loop
  int i = 0;
  while (i < width) {
    line(0, i, width, i); //draw horizontal line
    line(i, 0, i, height); //draw vertical line
    text(i, 0, i); //draw side text values
    text(i, i, 12); //draw side text values

    i = i + 100;
  }

  // Create a counter
  //for ( int i=0; i<width; i+=100) {
  //  line(0, i, width, i); //draw horizontal line
  //  line(i, 0, i, height); //draw vertical line
  //  text(i, 0, i); //draw side text values
  //  text(i, i, 12); //draw top text values
  //}
  noLoop();
}
