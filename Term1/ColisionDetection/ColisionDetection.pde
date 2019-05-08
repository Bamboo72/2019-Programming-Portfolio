int xspeed, yspeed;
int xpos, ypos, wdth, ht;
int xspeed2, yspeed2;
int xpos2, ypos2, wdth2, ht2;
void setup(){
  size(displayWidth,displayHeight);
  background(255);
  xspeed=3;
  xspeed2=3;
  yspeed=5;
  yspeed2=5;
  wdth=20;
  wdth2=20;
  ht=20;
  ht2=20;
  noStroke();
  xpos=width/2;
  xpos2=width/2;
  ypos=height/2;
  ypos2=height/2;
  frameRate(60);
}
void draw(){
 background(255);
  fill(0);
  ellipse(xpos,ypos,wdth,ht);
  ellipse(xpos2,ypos2,wdth2,ht2);
  xpos += xspeed;
  ypos += yspeed;
  if(xpos >=width-wdth/2 ||xpos <= wdth/2){
    xspeed *=-1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2){
    yspeed=yspeed*-1;
  }
  xpos2 += xspeed2;
  ypos2 += yspeed2;
   if(xpos2 >=width-wdth2/2 ||xpos2 <= wdth2/2){
    xspeed2 *=-1/2;
  }
  if (ypos2 >= height-ht2/2 || ypos2 <= ht2/2){
    yspeed2=yspeed2*-1/2;
  }
}
