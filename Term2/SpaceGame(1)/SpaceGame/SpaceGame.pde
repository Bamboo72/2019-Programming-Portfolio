// Jacob Schwartz 12/3/18
// Space Game
//TODO:

ArrayList<Laser> lasers; 
ArrayList<Asteroid> asteroids;
Timer timer;
SpaceShip s1;
EnemyShip e1;
Asteroid as1;
Asteroid ab1;
Laser l1, l2, l3;
PowerUp pu1, pu2, pu3;

int rockRate = 1000;

void setup() {
  size(600, 700);
  lasers = new ArrayList<Laser>();
  asteroids = new ArrayList<Asteroid>();
 
  timer = new Timer(rockRate);
  timer.start();
  
  s1 = new SpaceShip(300,300, 10);
  e1 = new EnemyShip(width/2, 100, 10);
  as1 = new Asteroid(100, 100, 50);
  ab1 = new Asteroid(200, 200, 100);
    pu1 = new PowerUp (100, 600);
  pu2 = new PowerUp (200, 600);
  pu3 = new PowerUp (300, 600);
}

void draw() {
  background(0);
  noCursor();
  
  // Add asteroids based on the timer
  if (timer.isFinished()) {
  asteroids.add(new Asteroid(int(random(width)), -20,25));
  timer.start();
  }

// WORK ON THIS VVVV

//// Render asteroids
//for (int i = 0; i<asteroids.size(); i++){

//}

  // Display and Dispose Lasers
  for (int i = 0; i<lasers.size(); i++) {
    lasers.get(i).shoot();
    lasers.get(i).display();
    if (lasers.get(i).reachedTop()) {
      lasers.remove(i);
    }
  }

  s1.display(mouseX,mouseY);
  e1.display(width/2, 100);
  as1.display(100, 100, 50, 50);
  ab1.display(500, 200, 100, 100);
    pu1.display(1);
  pu2.display(2);
  pu3.display(3);
}

void mousePressed() {
  //lasers.add(new Laser(s1.x+25, s1.y));
lasers.add(new Laser(mouseX+25, mouseY));
}

void keyPressed() {
if (key == 'q' || key == 'Q') {
//lasers.add(new Laser(s1.x-25, s1.y));
lasers.add(new Laser(mouseX-25, mouseY));
}
}
