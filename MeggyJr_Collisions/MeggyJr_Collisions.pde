/*
  MeggyJr_Collisions.pde
 
 Make something kinda like pacman to test collisions based on colors.
 
 */


#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

int(xcoord) = random(4,6);
int(ycoord) = random(4,6);


void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
 ClearSlate();
  drawWall();
  DrawPx(xcoord,ycoord,12);
  CheckButtonsPress();
   if(Button_Up)
      ycoord ++;
    if(Button_Down)
      ycoord --;
        if(ycoord > 7)
          ycoord = 7;
        if(ycoord < 1)
          ycoord = 1;
    if(Button_Left)                //This part makes it move left or right
      xcoord --;
    if(Button_Right)
      xcoord ++;
        if(xcoord > 7)
          xcoord = 7;                          // I didn't want it to go ot the other side 
        if(xcoord < 0)            // of the screen so I made it stay at the end
           xcoord = 0;
        
  
  DisplaySlate();
  
}

void drawWall()
{
 for(int i=0; i < 8; i++)
   {
     DrawPx(i,0,Blue);
   }
  
}
