//Jacob Schwartz 10/22/18
// Simple non OOP (object oriented programing) Car

Car myCar;

Car[] myCars = new Car[20];


void setup() {
  size(200, 200);
  myCar = new Car(color(random(255),random(255),random(255)),random(width),random(width),random(2,8));
  for(int i = 0; i < myCars.length ; i++){
    myCars[i] = new Car(color(random(255),random(255),random(255)),random(width),random(width),random(2,8));
  }
 }

void draw() {
  background(150);
  myCar.display();
  myCar.drive();
  for(int i = 0; i < myCars.length ; i++){
myCars[i].display();
myCars[i].drive();
  }
}
