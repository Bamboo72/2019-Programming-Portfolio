void setup(){
  size(500,500);
  frameRate(1);
  }

void draw() {
background(255);
strokeWeight(random(0,1));
drawBody();
drawHead();
drawEyes();
drawMouth();
drawNose();
drawHair();
}

void mouseClicked(){
saveFrame("line-######.png");
}

void drawBody () {
 fill(random(255),random(255),random(255));
  rect(200,370,100,300);
}

void drawHead() {
fill(255,random(200,230),random(22,200));
  //ellipse(250,250,250,250);
  ellipse(width/2, height/2, random(width*0.55,width*0.75), random(height*0.5,height*0.79));
}

void drawEyes() {
fill(random(100,255),random(100,255),255);
  ellipse(width/2-random(50,70),height/2,random(50,100),random(50,100));
  //  fill(random(100,255),random(100,255),255);
  ellipse(width/2+random(50,70),height/2,random(50,100),random(50,100));
}

void drawMouth() {
 fill(255,random(100),random(100));
//arc(width/2,height/2+70,random(100,125),random(100),0,PI);
bezier(width/2-50,height/2+100,width/2-random(25),height/2+random(100,175),
width/2+random(25),height/2+random(100,175),width/2+50,height/2+100);
}

void drawNose(){
fill(255,random(200,230),random(22,200));
bezier(width/2,height/2-50,width/2+random(-25,25),height/2-random(50),
width/2-25,height/2+100,width/2+random(25),height/2+50);
}

void drawHair(){
fill(200,random(100),random(100));
ellipseMode(CENTER);
ellipse(random(200,275),height/3-random(50,60),random(175,200),random(100,150));
ellipse(random(125,150),height/3-random(50),random(50,100),random(100,150));
ellipse(random(325,350),height/3-random(50),random(50,100),random(100,150));
ellipse(random(150,200),height/3-random(40),random(100,150),random(100,150));
ellipse(random(275,315),height/3-random(40),random(100,150),random(100,150));
ellipse(random(200,275),height/3-random(40),random(100,150),random(100,150));
}
