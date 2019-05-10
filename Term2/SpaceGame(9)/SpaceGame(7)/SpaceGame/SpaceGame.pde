// Jacob Schwartz 12/3/18 //<>//
// Space Game
//TODO: power ups, boss fight, alter ship controls, death effect, explode location, lasers before start, stars on the start screen

import processing.sound.*;
SoundFile laser;
SoundFile smallExplode;
SoundFile bigExplode;

Table tResults;
TableRow tr1;

ArrayList<Laser> lasers; 
ArrayList<Laser> bLasers;
ArrayList<Asteroid> asteroids;
ArrayList<Star> stars;
Timer timer; // for asteroids I think...
Timer lTimer; // for laser sounds

SpaceShip s1;
SpaceShip livesShip;
EnemyShip e1;
int asteroidRate = 1000;
int score = 0; // This will be used for user score
int levelNum = 1;
String level = "1";
String name = "";
color starColor = color(255);
boolean recorded = false;

void setup() {
  size(600, 700);

  tResults = loadTable("results.csv", "header");

  lasers = new ArrayList<Laser>();
  bLasers = new ArrayList<Laser>();
  asteroids = new ArrayList<Asteroid>();
  stars = new ArrayList<Star>();
  laser = new SoundFile(this, "laser.wav");
  smallExplode = new SoundFile(this, "smallExplode.wav");
  bigExplode = new SoundFile(this, "bigExplode.wav");

  timer = new Timer(asteroidRate);
  timer.start();
  lTimer = new Timer(300);
  lTimer.start();

  //s1 = new SpaceShip(mouseX, 500, 35);
  // s1 = new SpaceShip(mouseX, mouseY, 35);
  s1 = new SpaceShip(mouseX, mouseY, 25);
  livesShip = new SpaceShip(0, 0, 0);
  e1 = new EnemyShip(width/2, 100, 10);
}

void draw() {
  background(0);
  noCursor();

// Render and add stars
    for (int i = stars.size()-1; i>=0; i--) {
      stars.get(i).move();
      stars.get(i).display();
      stars.get(i).c = starColor;
      if (stars.get(i).reachedBottom()) {
        stars.remove(i);
      }
    }
    for (int i = 0; i < 1; i++) {
      stars.add(new Star(int(random(width)), 0));
    }


  level();
  if (s1.alive == true) {
    
    // Add asteroids based on the timer
    if (timer.isFinished()) {
      if (levelNum == 1) {
        asteroids.add(new Asteroid(int(random(width)), 0, 20, 20, 10, 10, 3));
      }
      if (levelNum == 2) {
        asteroids.add(new Asteroid(int(random(width)), 0, 20, 20, 10, 10, 5));
        asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 30, 3));
      }
      if (levelNum == 3) {
        asteroids.add(new Asteroid(int(random(width)), 0, 20, 20, 10, 10, 6));
        asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 30, 3));
      }
      if (levelNum == 4) {
        asteroids.add(new Asteroid(int(random(width)), 0, 20, 20, 10, 10, 7));
        asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 30, 6));
      }
      if (levelNum == 5) {
        asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 30, 3));
        asteroids.add(new Asteroid(int(random(width)), 0, 100, 100, 50, 100, 2));
      }
      if (levelNum == 6) {
        asteroids.add(new Asteroid(int(random(width)), 0, 100, 100, 50, 100, 4));
      }
      if (levelNum == 7) {
        asteroids.add(new Asteroid(int(random(width)), 0, 100, 100, 50, 100, 3));
      }
      /* 
       asteroids.add(new Asteroid(int(random(width)), 0, 20, 20, 10, 10, 7));
       asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 30, 3));
       asteroids.add(new Asteroid(int(random(width)), 0, 100, 100, 50, 100, 2));
       asteroids.add(new Asteroid(int(random(width)), 0, 200, 200, 100, 100, 1));
       */
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
        if (dist(l.x, l.y, a.x, a.y) < a.r) {
          println(score);
          asteroids.get(i).health -= 10;
          smallExplode.play();
          if (asteroids.get(i).health < 1 ) {
            score += asteroids.get(i).r;
            bigExplode.play();
            asteroids.remove(asteroids.get(i));
          }

          lasers.remove(lasers.get(j));
        }
      }
      // spaceship and asteroid collision detection
      //if (dist(a.x, a.y, mouseX, mouseY) < s1.r) {
      if (dist(a.x, a.y-5, mouseX, mouseY) < s1.r + a.r || dist(a.x-15, a.y+5, mouseX, mouseY) < (s1.r-10) + a.r || dist(a.x, a.y, mouseX, mouseY) < (s1.r-10)-a.r) {
        if (s1.health <= 100) {
          s1.health -= 1;
          if (lTimer.isFinished()) {
            smallExplode.play();
            lTimer.start();
          }
        }

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

    //if(mouseY > height-height/5){
    //s1.display(mouseX,height-height/5);
    //} else {
    //s1.display(mouseX, mouseY);
    //}

    if (s1.health <= 0 && s1.lives > 0) {
      s1.lives --;
      s1.displayExplode(mouseX, mouseY);
      delay(1000);

      s1.health = 100;
    } else {
      s1.display(mouseX, mouseY);
      // s1.display(mouseX, 500);
    }

    if (s1.health <= 0 && s1.lives == 0) {
      s1.alive = false;
    }

    e1.display(width/2, 100);
    explode();

    updateDisplay();
  } else {
    if (s1.lives > 0) {
      gameStart();
    } else {
      gameOver();
    }
  }
}

void updateDisplay() {
  fill(120, 120);
  stroke(0, 150, 255);
  // fill(150, 250, 255, 120);
  rect(width/2, height-height/9, width-10, height/5);
  ellipse(width/2, height- 75, 50, 50);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("POWER-UP ", width/2+5, height-108 );
  textAlign(LEFT);

  text("Score: " + score, 10, height-75 );
  text("Health: " + s1.health, 10, height-100 );
  text("Level: " + level, 10, height - 125);
  text("Lives: ", 400, height - 125);
  if (s1.lives > 3) {
    shipLives(475, height-120);
    shipLives(515, height-120);
    shipLives(555, height-120);
    noStroke();
    rect(582, height - 120, 5, 20);
    rect(582, height - 120, 20, 5);
  }
  if (s1.lives == 3) {
    shipLives(475, height-120);
    shipLives(515, height-120);
    shipLives(555, height-120);
  }
  if (s1.lives == 2) {
    shipLives(475, height-120);
    shipLives(515, height-120);
  }
  if (s1.lives == 1) {
    shipLives(475, height-120);
  }
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
    // if (dist(asteroids.get(i).x, asteroids.get(i).y, mouseX, mouseY) < s1.r) {
    if  (dist(asteroids.get(i).x, asteroids.get(i).y-5, mouseX, mouseY) < s1.r + asteroids.get(i).r || dist(asteroids.get(i).x-15, asteroids.get(i).y+5, mouseX, mouseY) < (s1.r-10) + asteroids.get(i).r || dist(asteroids.get(i).x, asteroids.get(i).y, mouseX, mouseY) < (s1.r-10)-asteroids.get(i).r) {
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
    stroke(starColor, 200);
    point(random(width), random(height));
  }
}

void level() {
  //if (score >= 200) {
  if (score >= 100) {
    level = "2";
    levelNum = 2;
    asteroidRate = 9000;
    starColor = color(255, 0, 0);
  }
  //if (score >= 1000) {
  if (score >= 600) {
    level = "3";
    levelNum = 3;
    asteroidRate = 7000;
    starColor = color(255, 130, 30);
  }
  // if (score >= 1500) {
  if (score >= 700) {
    level = "4";
    levelNum = 4;
    asteroidRate = 7000;
    starColor = color(255, 255, 0);
  }
  // if (score >= 2000) {
  if (score >= 800) {
    level = "5";
    levelNum = 5;
    asteroidRate = 9000;
    starColor = color(0, 255, 0);
  }
  // if (score >= 2500) {
  if (score >= 900) {
    level = "6";
    levelNum = 6;
    asteroidRate = 8000;
    starColor = color(0, 255, 255);
  }
  //if (score >= 3000) {
  if (score >= 1000) {
    level = "BOSS";
    levelNum = 7;
    asteroidRate = 7000;
    starColor = color(255, 0, 255);
  }
}

void gameStart() {
  fill(0, 100);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);
  textSize(50);
  fill(255);
  textAlign(CENTER, CENTER);
  text("Press Space to Start", width/2, height/2 - 20);
  textSize(25);
  text("Use the mouse to control \n right/left mouse or Q/E buttons to shoot", width/2, height/2 + 70);
  tResults.sort("SCORE");
  tr1 = tResults.getRow(tResults.getRowCount()-1); //there's a header so -1
  text("High Score: " + tr1.getString("SCORE") + " by: " + tr1.getString("NAME"), width/2, 0+height/5 );
  text("Enter your name: " + name, width/2, height-height/5);
}

void gameOver() {
  fill(0, 100);
  rect(width/2, height/2, width, height);
  textSize(50);
  fill(255);
  textAlign(CENTER, CENTER);
  text("Game Over \n Final Score: " + score, width/2, height/2);
  if (!recorded) {
    TableRow newRow = tResults.addRow();
    newRow.setString("NAME", name);
    newRow.setString("SCORE", str(score));
    newRow.setString("LEVEL", level);
    saveTable(tResults, "data/results.csv");
    recorded = true;
  }
  textSize(25);
  tResults.sort("SCORE");
  tr1 = tResults.getRow(tResults.getRowCount()-1); //there's a header so -1
  text("High Score: " + tr1.getString("SCORE") + " by: " + tr1.getString("NAME"), width/2, 0+height/5 );
}

void mousePressed() {
  if (mousePressed && mouseButton == RIGHT) {
    //lasers.add(new Laser(s1.x+25, s1.y));
    lasers.add(new Laser(mouseX+25, mouseY));
    if (lTimer.isFinished()) {
      laser.play();
      lTimer.start();
    }
  }
  if (mousePressed && mouseButton == LEFT) {
    //lasers.add(new Laser(s1.x-25, s1.y));
    lasers.add(new Laser(mouseX-25, mouseY));
    if (lTimer.isFinished()) {
      laser.play();
      lTimer.start();
    }
  }
}

//change to keyReleased to remove spamming
void keyPressed() {
  if (s1.alive == true) {
  if (key == 'q' || key == 'Q') {
    //lasers.add(new Laser(s1.x-25, s1.y));
    lasers.add(new Laser(mouseX-25, mouseY));
    if (lTimer.isFinished()) {
      laser.play();
      lTimer.start();
    }
  }
  if (key == 'e' || key == 'E') {
    //lasers.add(new Laser(s1.x+25, s1.y));
    lasers.add(new Laser(mouseX+25, mouseY));
    if (lTimer.isFinished()) {
      laser.play();
      lTimer.start();
    }
  }
  if (key == 'p') {
    asteroids.add(new Asteroid(int(random(width)), 0, 50, 50, 25, 10, 5));
  }
}
  if (s1.alive == false) {
    if (key == ' ') {
      s1.alive = true;
      s1.health = 100;
      s1.lives = 3;
      recorded = false;
    } else {
      name+=key;
      println(name);
    }
  }
}

void shipLives(int x, int y) {
  //guns
  fill(255, 255, 100);
  noStroke();
  rect(x-12.5, y, 1.5, 5);
  rect(x+12.5, y, 1.5, 5);
  //decor
  fill(255, 255, 100);
  strokeWeight(0.5);
  stroke(100);
  ellipse(x+0.25, y, 12.5, 17.5);
  triangle(x, y-7.5, x-17.5, y+5, x+17.5, y+5);
  triangle(x, y-17, x+5, y, x-4.5, y);
  //main body
  fill(205, 0, 255);
  strokeWeight(2);
  triangle(x, y-10, x-15, y+5, x+15, y+5);
  ellipse(x, y, 10, 15);
  strokeWeight(1);
  triangle(x, y-15, x+2.5, y, x-2.5, y);
  //windows
  stroke(100);
  fill(150, 250, 255);
  //fill(random(255),random(255),random(255));
  //noStroke();
  ellipse(x, y-2.5, 10, 5);
  ellipse(x-3, y+2.5, 2.5, 2.5);
  ellipse(x+3, y+2.5, 2.5, 2.5);
  ellipse(x, y+2.5, 2.5, 2.5);
  //thrusters
  fill(200);
  strokeWeight(2);
  rectMode(CENTER);
  rect(x-4, y+7.5, 2.5, 5);
  rect(x, y+7.5, 2.5, 5);
  rect(x+4, y+7.5, 2.5, 5);
}
