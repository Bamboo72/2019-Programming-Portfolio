import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Shapes extends PApplet {
  public void setup() {
//Shapes.pde by Jacob Schwartz - 8-31-18 

background(150);
fill(0);
line(100,0,100,height);
text("100",80,15);
line(200,0,200,height);
text("200",180,15);
line(300,0,300,height);
text("300",280,15);
line(400,0,400,height);
text("400",380,15);
line(500,0,500,height);
text("500",480,15);
line(600,0,600,height);
text("100",0,100);
line(0,100,width,100);
text("200",0,200);
line(0,200,width,200);
text("300",0,300);
line(0,300,width,300);
text("400",0,400);
line(0,400,width,400);
text("500",0,500);
line(0,500,width,500);
fill(255,255,0);
rect(20,20,100,100);
rect(180,20,100,100,15);
rect(340,20,100,100,15,7,30,50);
rect(500,35,100,70);
fill(255,0,0);
ellipse(70,250,100,100);
ellipse(230,250,100,65);
ellipse(400,250,65,100);
fill(0,0,255);
triangle(555,180,500,300,615,300);
triangle(45,340,20,410,135,450);
fill(0,255,255);
quad(180,340,300,340,300,380,180,450);
quad(400,340,365,400,400,450,435,400);
quad(500,340,610,400,500,450,550,400);
    noLoop();
  }

  public void settings() { 
size(650,550); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Shapes" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
