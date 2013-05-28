/* @pjs globalKeyEvents="true"; */

/*
James Kolano's Paint Program
Redesigned code by Mr. Corica

Processing.js changes: BoxHit, size(), move images to Data folder
*/

final int TOOLBAR = 0;
final int COLORBAR = 1;
final int WEIGHTBAR = 2;
int menuState = TOOLBAR;

final int PENTOOL = 0;
final int FILLTOOL = 1;
final int EYEDROPPERTOOL = 2;
final int ERASERTOOL = 3;
final int SELECTTOOL = 4;
int activeTool = PENTOOL;

// Main window constants
int ysize=300;
int xsize=330;
int canvasWidth = 300;
PImage eraser;
PImage bucket;
PImage dropper;
PImage pencil;

// Current drawing constants
int weight = 1;
float colorchosen = 0;
float colorsaturation = 0;
float colorbrightness = 0;
color backgroundColor;
float lastx;
float lasty;
//================================================
void setup()
{
  //noSmooth();
//  size(xsize, ysize);  // In Processing.js must use constants, e.g. 300.
  size(330,300);
  frameRate(10);

  colorMode(HSB, 360);
  backgroundColor = color(0,0,220);
  background(backgroundColor);
  eraser=loadImage("eraser.png");
  bucket=loadImage("bucket.PNG");
  dropper=loadImage("dropper.PNG");
  pencil=loadImage("pencil.PNG");
}

void draw()
{
  displayMenu();
}


void keyPressed()
{
  println("Dump of current values for debugging" + menuState+" ");
}

void mouseDragged()
{
  if (activeTool == PENTOOL || activeTool == ERASERTOOL)
  {
    if (lastx == -1)
    {
      lastx = mouseX;
      lasty = mouseY;
    }
    strokeWeight(weight);
    if (activeTool == PENTOOL)
    {
      fill(colorchosen, colorsaturation, colorbrightness);
      stroke(colorchosen, colorsaturation, colorbrightness);
    }
    else // ERASERTOOL
    {
      fill(backgroundColor);
      stroke(backgroundColor);
    }
    line(mouseX, mouseY, lastx, lasty);
    lastx = mouseX;
    lasty = mouseY;
  }
}

void mousePressed()
{
  lastx = mouseX;
  lasty = mouseY;
}

void mouseReleased()
{
  lastx = -1; 
  lasty = -1;
}

void mouseClicked()
{
  if (mouseX > canvasWidth)
  {
    switch(menuState) 
    {
    case TOOLBAR: 
      mouseClickToolMenu(mouseX, mouseY); 
      break;
    case WEIGHTBAR: 
      mouseClickWeights(mouseX, mouseY); 
      break;
    case COLORBAR:
      mouseClickColorBar(mouseX, mouseY);
      break;
    }
  }
  else
  {
    if (activeTool==FILLTOOL)
    {
      fillCoricaMain(mouseX, mouseY, color(colorchosen, colorsaturation, colorbrightness), get(mouseX, mouseY));
    }
  }
}

//==============floodfill routine============================================
ArrayList<Coord> fillList = new ArrayList<Coord>(); 
void fillCoricaMain(int cx, int cy, color newColor, color prevColor)
{
  fillList.clear();
  fillCorica(cx, cy, newColor, prevColor);
}

void fillCorica(int cx, int cy, color newColor, color prevColor)
{
  // if color at this location is still the old color
  if (get(cx, cy)== prevColor)
  {
    set(cx, cy, newColor);

    // fill a line, add new calls above and below
    // Proceed right
    int currX = cx + 1;
    while (get (currX, cy)==prevColor)
    {
      set(currX, cy, newColor);
      if (get(currX, cy+1)==prevColor)
      {
        fillList.add(new Coord(currX, cy+1));
      }
      if (get(currX, cy-1)==prevColor)
      {
        fillList.add(new Coord(currX, cy-1));
      }
      currX++;
    }

    // Proceed left
    currX = cx - 1;
    while (get (currX, cy)==prevColor)
    {
      set(currX, cy, newColor);
      if (get(currX, cy+1)==prevColor)
      {
        fillList.add(new Coord(currX, cy+1));
      }
      if (get(currX, cy-1)==prevColor)
      {
        fillList.add(new Coord(currX, cy-1));
      }
      currX--;
    }

    // call fill() on each location in the array
    while (fillList.size ()>0)
    {
      Coord spot = fillList.get(fillList.size()-1);
      fillList.remove(fillList.size()-1);

      fillCorica(spot.x, spot.y, newColor, prevColor);
    }
  }
}

// Little utility class for fill routine so that can use a single 
// array of points, rather than separate x and y arrays
class Coord
{
  int x;
  int y;

  Coord(int xArg, int yArg)
  {
    x = xArg;
    y = yArg;
  }
}

//======================================================================
//======================================================================

void displayMenu()
{
  if (menuState == COLORBAR)
  {
    displayColors();
  }
  else if (menuState == TOOLBAR)
  {
    displayToolMenu();
  }
  else if (menuState == WEIGHTBAR)
  {
    displayWeights();
  }
}

// TOOL MENU========================================================

void mouseClickToolMenu(int mouseX, int mouseY)
{
  int boxHeight = ysize/10;
  int bottom = ysize; 
  int boxHit = (int) ((ysize-mouseY)/boxHeight); // box from 0 to 9
  // Note: int cast in statement above isn't needed in Java, but required for Processing.js
  switch (boxHit)
  {
  case 0: 
    menuState = WEIGHTBAR;
    break;
  case 1: 
    menuState = COLORBAR; 
    break;
  case 2: 
    activeTool = ERASERTOOL; 
    break;
  case 3: 
    activeTool = FILLTOOL; 
    break;
  case 4: 
    activeTool = EYEDROPPERTOOL; 
    break;
  case 5: 
    activeTool = PENTOOL; 
    break;
  case 6: 
    activeTool = SELECTTOOL; 
    break;
  case 9: 
    // Clear the painting
    // Should have a confirm here, so painting isn't cleared by accident.
    fill(0, 0, 220);
    quad(0, 0, 0, 300, canvasWidth, 300, canvasWidth, 0);     
    break;
  default: 
    ; // no change - stay Toolbar
  }
}

void displayToolMenu()
{
  for (int i=0;i<10;i++)
  {
    fill(0, 0, 360);
    stroke(0, 0, 0);
    strokeWeight(1);
    quad(xsize*10/11, ysize*1/10*i, xsize, ysize*1/10*i, xsize, ysize*1/10+ysize*1/10*i, xsize*10/11, ysize*1/10+ysize*1/10*i);
  }

  //  fill(330, 360, 360);  // No effect?
  image(eraser, 300, 210);
  image(bucket, 303, 185);
  image(dropper, 303, 155);
  image(pencil, 303, 125);

  fill(0, 0, 0);
  //  ellipse(315, 285, 5, 5);
  ellipse(315, 285, weight, weight);

  fill(0, 360, 360);
  quad(xsize*10/11, ysize*4/5, xsize*21/22, ysize*4/5, xsize*21/22, ysize*51/60, xsize*10/11, ysize*51/60);
  fill(120, 360, 360);
  quad(315, 240, 330, 240, 330, 255, 315, 255);
  fill(240, 360, 360);
  quad(315, 255, 330, 255, 330, 270, 315, 270);
  fill(59, 360, 360);
  quad(300, 255, 315, 255, 315, 270, 300, 270);
  fill(0, 0, 220);
  quad(305, 5, 325, 5, 325, 25, 305, 25);
  fill(0, 0, 360);
  quad(305, 95, 318, 95, 318, 105, 305, 105);
  line(312, 100, 325, 100);
  line(325, 100, 325, 110);
  line(325, 110, 312, 110);
  line(312, 110, 312, 100);
}

// ===================================================================
// ================ weight menu =====================================

void mouseClickWeights(int mouseX, int mouseY)
{
  int boxHeight = ysize/10;
  int bottom = ysize; 
  int boxHit = (ysize-mouseY)/boxHeight; // box from 0 to 9
  weight=28-2*boxHit;
  weight=1+2*boxHit;
  menuState = TOOLBAR;
}

void displayWeights()
{
  for (int i=0;i<10;i++)
  {
    fill(0, 0, 360);
    quad(300, 30*i, 330, 30*i, 330, 30+30*i, 300, 30+30*i);
    fill(0, 0, 0);
    ellipse(315, 15+30*i, 19-2*i, 19-2*i);
  }
}

//========================================================================
//========================Color menu======================================
void displayColors()
{
  fill(0, 0, 0);
  quad(300, 300, 300, 275, 330, 275, 330, 300);
  fill(0, 0, 360);
  quad(300, 275, 300, 250, 330, 250, 330, 275);
  fill(24, 300, 140);
  quad(300, 250, 300, 225, 330, 225, 330, 250);
  fill(0, 0, 220);
  quad(300, 225, 300, 200, 330, 200, 330, 225);
  stroke(0, 0, 0);
  line(300, 0, 300, 300);
  for (int i=0;i<200;i++)
  {
    noStroke();
    fill(i*1.8, 360, 360);
    quad(300, 199-i, 330, 199-i, 330, 200-i, 300, 200-i);
  }
}

void mouseClickColorBar(int mouseX, int mouseY)
{
  for (int i=0;i<200;i++)
  {
    if (mouseX>canvasWidth&&mouseY>199-i&&mouseY<=200-i)
    {
      colorchosen=i*1.8;
      colorbrightness=360;
      colorsaturation=360;
    }     
    if (mouseX>canvasWidth&&mouseY>200&&mouseY<=225)
    {
      colorchosen=0;
      colorsaturation=0;
      colorbrightness=220;
    }   
    if (mouseX>canvasWidth&&mouseY>225&&mouseY<=250)
    {
      colorchosen=24;
      colorsaturation=300;
      colorbrightness=140;
    }
    if (mouseX>canvasWidth&&mouseY>250&&mouseY<=275)
    {
      colorbrightness=360;
      colorchosen=0;
      colorsaturation=0;
    }
    if (mouseX>canvasWidth&&mouseY>275&&mouseY<=300)
    {
      colorbrightness=0;
      colorchosen=0;
      colorsaturation=0;
    }
  } // for
  menuState = TOOLBAR;
}


