//Jacob Schwartz 9/19/18 

// Consider Mr Kapptie’s grading system where numbers 
// are turned into letters. Fill in the blanks in the 
// following code to complete the boolean expression.


void setup() {
  size (101, 100);
}

//float grade = random(0,100);
  
  void draw() {
    if (mouseX >= 94) {
  println(mouseX + " You got an A");
} else if (mouseX >= 89) { // In one conditional statement, you can only ever have one if and one else. However, you can have as many else if's as you like!
  println (mouseX + " You got a A-");
} else if (mouseX >= 87) {
  println (mouseX + " You got a B+");
} else if (mouseX >= 83) {
  println (mouseX + " You got a B");
} else if (mouseX >= 80) {
  println (mouseX + " You got a B-");
} else if (mouseX >= 77) {
  println (mouseX + " You got a C+");
} else if (mouseX >= 73) {
  println (mouseX + " You got a C");
} else if (mouseX >= 70) {
  println (mouseX + " You got a C-");
} else if (mouseX >= 67) {
  println (mouseX + " You got a D+");
} else if (mouseX >= 63) {
  println (mouseX + " You got a D");
} else if (mouseX >= 60) {
  println (mouseX + " You got a D-");
} else {
  println (mouseX + " You got an F");
}
}

// Create a method to use in an app to display letter grade based on the 
// position of grade on a line.
