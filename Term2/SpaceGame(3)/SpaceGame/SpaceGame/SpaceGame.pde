// Jacob Schwartz 12/3/18 //<>// //<>// //<>//
// Space Game
//TODO:

ArrayList<Laser> lasers; 
ArrayList<Asteroid> asteroids;
Timer timer;
SpaceShip s1;
EnemyShip e1;
int asteroidRate = 1000;
int score = 0; // This will be used for user score

void setup() {
  size(600, 700);
  lasers = new ArrayList<Laser>();
  asteroids = new ArrayList<Asteroid>();

  timer = new Timer(asteroidRate);
  timer.start();

  s1 = new SpaceShip(mouseX, 500, 10);
  e1 = new EnemyShip(width/2, 100, 10);
}

void draw() {
  background(0);
  noCursor();
  
  // Add asteroids based on the timer
  // I could add a level variable, so larger sizes are only avaible at higher levels
  if (timer.isFinished()) {
    asteroids.add(new Asteroid(int(random(width)), 0, 20, 20, 10, 10, 5));
    asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 30, 3));
    //asteroids.add(new Asteroid(int(random(width)), 0, 100, 100, 50, 50,2));
    //asteroids.add(new Asteroid(int(random(width)), 0, 200, 200, 100, 100, 1));


    timer.start();
  }

  // Render asteroids
  for (int i = asteroids.size()-1; i>=0; i--){
  //for (int i = 0; i<asteroids.size(); i++) {
    asteroids.get(i).attack();
    asteroids.get(i).display();
    if (asteroids.get(i).reachedBottom()) {
      asteroids.remove(i);
    }
    // Add Collision Detection Here!!!
    for (int j = 0; j < lasers.size(); j++) {
      // Detect an intersection
      if (dist(lasers.get(j).x, lasers.get(j).y, asteroids.get(i).x, asteroids.get(i).y) < asteroids.get(i).r+3) {
        score++;
        println(score);
        asteroids.get(i).health -= 10;
        if (asteroids.get(i).health < 1 )
        {
          asteroids.remove(asteroids.get(i));
        }
        lasers.remove(lasers.get(j));
      }
    }
  }

  // Display and Dispose Lasers
  for (int i = lasers.size()-1; i>=0; i--){
  //for (int i = 0; i<lasers.size(); i++) {
    lasers.get(i).shoot();
    lasers.get(i).display();
    if (lasers.get(i).reachedTop()) {
      lasers.remove(i);
    }
  }

  s1.display(mouseX, 500);
  e1.display(width/2, 100);
  updateDisplay();
}

void updateDisplay(){
  fill(120, 120);
  stroke(0,150,255);
 // fill(150, 250, 255, 120);
    rect(width/2,height-height/9, width-10, height/5);
        fill(255);
    textSize(20);
    text("Score: " + score, 10, height-75 );
    text("Health: " + s1.health, 10, height-100 );

}

void mousePressed() {
  if (mousePressed && mouseButton == RIGHT) {
    //lasers.add(new Laser(s1.x+25, s1.y));
    lasers.add(new Laser(mouseX+25, s1.y));
  }
  if (mousePressed && mouseButton == LEFT) {
    //lasers.add(new Laser(s1.x-25, s1.y));
    lasers.add(new Laser(mouseX-25, s1.y));
  }
}

//change to keyReleased to remove spamming
void keyPressed() {
  if (key == 'q' || key == 'Q') {
    //lasers.add(new Laser(s1.x-25, s1.y));
    lasers.add(new Laser(mouseX-25, s1.y));
  }
  if (key == 'e' || key == 'E') {
    //lasers.add(new Laser(s1.x+25, s1.y));
    lasers.add(new Laser(mouseX+25, s1.y));
  }
  if (key == 'p') {
    asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 10, 5));
  }
}
