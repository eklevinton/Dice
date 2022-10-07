float rotater;
void setup()
{
  size(780,780);
  noLoop();
}


//suplicating bob the die
void draw()
{
  background(245, 207, 237);
  int sum = 0;
  for (int y= 0; y < 650; y = y +75){
    for(int x = 0; x < 650; x = x + 75){
       Die bob = new Die(x,y);
       bob.show();
       if(bob.cir < 7){
         sum+= bob.cir;
       }
    }
  }
   
//import java.applet. *;
//import java.awt.*;
//public class DontDemo extends Applet 
//{
//  public void paint (Graphics g)
//  {
  //  String quote = "Total Number Rolled = " + sum, 350, 40);
  //  Font objFont = new Dont ("Georgia", Font.ITALIC, 16);
 //   g.setFont(objFont);
  //  g.drawString(quote, 20,20);
 // }




//TEXT OF THE TOTAL NUMBER 

PFont katyaFont;
katyaFont = createFont("Palatino-Italic", 30);
textFont(katyaFont);
fill(46, 134, 193);
 text("Total Number Rolled = " + sum, 100, 50);
 
katyaFont = createFont("Palatino-Italic", 13);
textFont(katyaFont);
rotater += 0.4; //rotation value grows each frame
fill(210, 26, 171);
// stroke(0,255,45,45);
translate(680,40); // positions next shape at the mouse position
rotate(rotater); // Rotation in RADIANS not degrees
text("#Pink4Life", 0,0); // location to draw

 
 
 
 
}



void mousePressed()
{
  redraw();
}


class Die //MODELING ONE SINGLE DICE CUBE 
{
  int myX, myY;
  int cir;
  Die(int x, int y) //constructor
  {
    roll();
    myY = y;
    myX = x;
}



// CODE FOR ROLLING THE DICE
void roll()
{
  cir = (int)(Math.random()*6+1);
}


void show()
//REVEALING DOTS ON MANY RECTANGLES
{
  fill((int)(Math.random()*220 + 30),(int)(Math.random()*150+40),(int)(Math.random()*220+70));

  rect(myX + 70, myY + 70, 60, 60);
  
  //CODE FOR 1 DOT
  
  if(cir == 1){
    fill(240, 98, 146);
    ellipse(myX+100, myY+100, 5, 5);
  }
  
  //CODE FOR 2 DOTS
  
  if(cir == 2){
    fill(240, 98, 146);
    ellipse(myX+90, myY+100, 5, 5);
    ellipse(myX+110, myY+100, 5, 5);
  }
  
  //CODE FOR 3 DOTS
  
  if(cir == 3){
    fill(240, 98, 146);
    ellipse(myX+100, myY+100, 5, 5);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  
  //CODE FOR 4 DOTS
  
  
  if(cir == 4){
    fill(240, 98, 146);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  
  // CODE FOR 5 DOTS
  if(cir == 5){
    fill(240, 98, 146);
    ellipse(myX+100, myY+100, 5, 5);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  
 // CODE FOR THE 6 DOTS
  if(cir == 6){
    fill(240, 98, 146);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+100, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+100, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
 }
}
