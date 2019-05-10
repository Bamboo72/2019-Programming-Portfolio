// Jacob Schwartz 12/3/18
// Space Game
//TODO:
SpaceShip s1;

void setup(){
size(600,700);
s1 = new SpaceShip(width/2, height/2, 10);
}

void draw(){
s1.display(width/2,height/2);
}
