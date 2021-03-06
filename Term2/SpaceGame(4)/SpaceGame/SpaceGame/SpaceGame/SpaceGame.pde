// Jacob Schwartz 12/3/18 //<>// //<>// //<>//
// Space Game
//TODO: make a line to come before the stars, alter ship controls, figure out the crashes, implement a leveling system

ArrayList<Laser> lasers; 
ArrayList<Asteroid> asteroids;
ArrayList<Star> stars;
Timer timer;
SpaceShip s1;
EnemyShip e1;
Star starline;
int asteroidRate = 1000;
int score = 0; // This will be used for user score
int levelNum = 1;
String level = "1";

void setup() {
  size(600, 700);
  lasers = new ArrayList<Laser>();
  asteroids = new ArrayList<Asteroid>();
  stars = new ArrayList<Star>();

  timer = new Timer(asteroidRate);
  timer.start();

  //s1 = new SpaceShip(mouseX, 500, 35);
  // s1 = new SpaceShip(mouseX, mouseY, 35);
  s1 = new SpaceShip(mouseX, mouseY, 40);


  e1 = new EnemyShip(width/2, 100, 10);

  starline = new Star(0, 0);
}

void draw() {
  background(0);
  noCursor();

  level();

  // Render and add stars
  for (int i = stars.size()-1; i>=0; i--) {
    stars.get(i).move();
    stars.get(i).display();
    if (stars.get(i).reachedBottom()) {
      stars.remove(i);
    }
  }
  for (int i = 0; i < 1; i++) {
    stars.add(new Star(int(random(width)), 0));
  }

  // Add asteroids based on the timer
  // I could add a level variable, so larger sizes are only avaible at higher levels
  if (timer.isFinished()) {
    //asteroids.add(new Asteroid(s1.x, 0, 20, 20, 10, 10, 5));
    asteroids.add(new Asteroid(int(random(width)), 0, 20, 20, 10, 10, 7));
    asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 30, 3));
    if (levelNum >= 3) {
      asteroids.add(new Asteroid(int(random(width)), 0, 100, 100, 50, 100, 2));
    }
    //asteroids.add(new Asteroid(int(random(width)), 0, 200, 200, 100, 100, 1));
    if (levelNum >= 10) {
      asteroids.add(new Asteroid(width/2, 0, width, width, 1000, width/2, 1));
    }


    timer.start();
  }

  // Render asteroids
  for (int i = asteroids.size()-1; i>=0; i--) {
    // for (int i = 0; i<asteroids.size(); i++) {
    Asteroid a = (Asteroid) asteroids.get(i);
    asteroids.get(i).attack();
    asteroids.get(i).display();
    if (asteroids.get(i).reachedBottom()) {
      asteroids.remove(i);
    }
    // laser and asteroid collision detection
    for (int j = lasers.size()-1; j >= 0; j--) {
      Laser l = (Laser) lasers.get(j);
      // Detect an intersection

      // error 
      if (dist(l.x, l.y, a.x, a.y) < a.r) {

        println(score);
        asteroids.get(i).health -= 10;
        if (asteroids.get(i).health < 1 ) {
          score += asteroids.get(i).r;
          asteroids.remove(asteroids.get(i));
        }

        lasers.remove(lasers.get(j));
      }
    }
    // spaceship and asteroid collision detection
    if (dist(a.x, a.y, mouseX, mouseY) < s1.r) {
      s1.health -= 1;
      // asteroids.remove(asteroids.get(i));
    }
  }

  // Display and Dispose Lasers
  for (int i = lasers.size()-1; i>=0; i--) {
    //for (int i = 0; i<lasers.size(); i++) {
    lasers.get(i).shoot();
    lasers.get(i).display();
    if (lasers.get(i).reachedTop()) {
      lasers.remove(i);
    }
  }

  // s1.display(mouseX, 500);

  //if(mouseY > height-height/5){
  //s1.display(mouseX,height-height/5);
  //} else {
  //s1.display(mouseX, mouseY);
  //}

  if(s1.health <= 0){
  gameOver();
  } else {
  s1.display(mouseX, mouseY);
  }
  
  //e1.display(width/2, 100);
  starline.display();
  explode();

  updateDisplay();
}

void updateDisplay() {
  fill(120, 120);
  stroke(0, 150, 255);
  // fill(150, 250, 255, 120);
  rect(width/2, height-height/9, width-10, height/5);
  fill(255);
  textSize(20);
  text("Score: " + score, 10, height-75 );
  text("Health: " + s1.health, 10, height-100 );
  text("Level: " + level, 10, height - 125);
}

void explode() {
  for (int i = asteroids.size()-1; i>=0; i--) {
    for (int j = 0; j < lasers.size(); j++) {
      if (dist(lasers.get(j).x, lasers.get(j).y, asteroids.get(i).x, asteroids.get(i).y) < asteroids.get(i).r) {

        stroke(150, 100, 100);          
        fill(200, 100, 0);
        ellipse(asteroids.get(i).x, asteroids.get(i).y, asteroids.get(i).w+10, asteroids.get(i).h+10);
      }
    }
    if (dist(asteroids.get(i).x, asteroids.get(i).y, mouseX, mouseY) < s1.r) {
      stroke(255, 0, 0);
      fill(255, 255, 0, 100);
      beginShape();
      vertex(asteroids.get(i).x, mouseY-13);
      vertex(asteroids.get(i).x+2, mouseY-2);
      vertex(asteroids.get(i).x+7, mouseY-7);
      vertex(asteroids.get(i).x+3, mouseY-3);
      vertex(asteroids.get(i).x+13, mouseY);
      vertex(asteroids.get(i).x+3, mouseY+3);
      vertex(asteroids.get(i).x+7, mouseY+7);
      vertex(asteroids.get(i).x+2, mouseY+2);
      vertex(asteroids.get(i).x, mouseY+13);
      vertex(asteroids.get(i).x-2, mouseY+2);
      vertex(asteroids.get(i).x-7, mouseY+7);
      vertex(asteroids.get(i).x-3, mouseY+3);
      vertex(asteroids.get(i).x-13, mouseY);
      vertex(asteroids.get(i).x-3, mouseY-3);
      vertex(asteroids.get(i).x-7, mouseY-7);
      vertex(asteroids.get(i).x-2, mouseY-2);
      endShape(CLOSE);
      //ellipse(mouseX, mouseY, 20, 20);
    }
  }
}

void stars() {
  for (int i = 0; i < 5; i++) {
    stroke(255, 200);
    point(random(width), random(height));
  }
}

void level() {
  if (score >= 50) {
    level = "2";
    levelNum = 2;
    asteroidRate = 9000;
    background(20);
  }
  if (score >= 100) {
    level = "3";
    levelNum = 2;
    asteroidRate = 7000;
    background(40);
  }
  if (score >= 200) {
    level = "4";
    levelNum = 2;
    asteroidRate = 5000;
    background(60);
  }
  //if (score >= 300) {
  //  level = 5;
  //levelNum = 2;
  //  asteroidRate = 2000;
  //  background(80);
  //}
  if (score >= 300) {
    level = "BOSS";
    levelNum = 10;
    asteroidRate = 2000;
    background(80);
  }
}

void gameOver() {

}

void mousePressed() {
  if (mousePressed && mouseButton == RIGHT) {
    //lasers.add(new Laser(s1.x+25, s1.y));
    lasers.add(new Laser(mouseX+25, mouseY));
  }
  if (mousePressed && mouseButton == LEFT) {
    //lasers.add(new Laser(s1.x-25, s1.y));
    lasers.add(new Laser(mouseX-25, mouseY));
  }
}

//change to keyReleased to remove spamming
void keyPressed() {
  if (key == 'q' || key == 'Q') {
    //lasers.add(new Laser(s1.x-25, s1.y));
    lasers.add(new Laser(mouseX-25, mouseY));
  }
  if (key == 'e' || key == 'E') {
    //lasers.add(new Laser(s1.x+25, s1.y));
    lasers.add(new Laser(mouseX+25, mouseY));
  }
  if (key == 'p') {
    asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 10, 5));
  }
}
