/* @pjs globalKeyEvents="true"; */

void setup()
{
  background (0, 255, 0);
  size (800, 400);
  frameRate (30);
  frogger = loadImage("frogger.png");
  froggerLife = loadImage("froggerlife.png");
  froggerLives = loadImage("froggerlives.png");
  froggerDead = loadImage ("froggerdead.png");
}

int a = 0;
int b = 0;
int c = 0;
int w = 0;
int x = 0;
int y = 0;
int lifeCount = 0;
int winCount = 0;
int froggerDie = 680;

PImage frogger;
PImage froggerLife;
PImage froggerLives;
PImage froggerDead;

void draw ()
{

  if (lifeCount == 4 || lifeCount < 4)
  {
    background(0, 255, 0);
    drawLandscape();
    drawFrogger();
    drawFroggerLives();
    drawCarA();
    drawCarB();
    drawCarC();
    text("U = Up, J = Down, H = Left, J = Down.   Wins: " +winCount,5,10);


//---------------
// Life Counter
//---------------

    for (int froggerLifeX = width; froggerLifeX > froggerDie; froggerLifeX = froggerLifeX-25) 
      image(froggerLife, froggerLifeX, froggerLifeY); // Lives at the top-right corner

//---------------
// Win Counter
//---------------
// When frogger reaches the top of the screen, winCount + 1

   if (froggerY < 0)
    {
      winCount = winCount + 1;
    }
    
//---------------
// Frogger Lives
//---------------
// When Frogger gets crashed, life count goes up, and for each life count that goes up, you lose 1 life.
// When life count is > 4, you must restart the game.
//---------------
 
    if (lifeCount == 0)
      {
        froggerDie = 690;
      }

    if (abs(froggerX - a) < 15 && 49 < froggerY && froggerY < 125 || abs(froggerX - b) < 15 && 154 < froggerY && froggerY < 235 || abs(froggerX - c) < 15 && 264 < froggerY && froggerY < 345)
    {
      lifeCount = lifeCount + 1;
      if (lifeCount == 1)
      {
        froggerDie = 710;
      }
      else if (lifeCount == 2)
      {
        froggerDie = 730;
      }
      else if (lifeCount == 3)
      {
        froggerDie = 750;
      }
      else if (lifeCount == 4)
      {
        froggerDie = 780;
      }
    }

    if (abs(froggerX - a) < 15 && 49 < froggerY && froggerY < 125)
    {
      froggerX = 380;
      froggerY = 350;
    }

    else if (abs(froggerX - b) < 15 && 154 < froggerY && froggerY < 235)
    {
      froggerX = 380;
      froggerY = 350;
    }

    else if (abs(froggerX - c) < 15 && 264 < froggerY && froggerY < 345)
    {
      froggerX = 380;
      froggerY = 350;
    }

    if (froggerX < 0 || froggerX > 800 || froggerY < 0 || froggerY > 400)
    {
      froggerX = 380;
      froggerY = 350;
    }
  }
  else if (lifeCount > 4)
  {
    drawFroggerDead();
  }
}

//----------------------------------------------------------------//
//----------------------------------------------------------------//

void keyPressed()
{
  
//---------------
// Move Keys
//---------------
// Up = U
// Down = J
// Left = H
// Right = K

  switch (key)
  {
  case 'u':
    moveFrogger (0, -10);
    break;
  case 'h':
    moveFrogger (-10, 0);
    break;
  case 'j':
    moveFrogger (0, 10);
    break;
  case 'k':
    moveFrogger (10, 0);
    break;
    
//---------------
// Restarter
//---------------
// Click the f key when you lose all of your lives. Only works when you've lost all of your lives.

  case 'f':
  if (lifeCount > 4)
  {
    lifeCount = 0;
    winCount = 0;
    froggerX = 380;
    froggerY= 365;
  }
    break;
  }
}

//-------------------------------------------

float froggerX = 380;
float froggerY = 365;
float froggerLifeX = 680;
float froggerLifeY = 0;

//---------------
// Frogger
//---------------
void drawFrogger()
{
  image(frogger, froggerX, froggerY);
}

//---------------------
// Frogger Coordinates
//---------------------
void moveFrogger (float dx, float dy)
{
  froggerX += dx;
  froggerY += dy;
}

//---------------
// Lives left
//---------------

void drawFroggerLives()
{
  image(froggerLives, 640, 0);
}

//---------------
// You Lose!
//---------------
// You Lose! Screen
//---------------

void drawFroggerDead()
{
  image(froggerDead, 0, 0);
}

//----------------------------------------------------------------//
//----------------------------------------------------------------//

//---------------
// Car A
//---------------
// Top Lane
//---------------

void drawCarA()
{
  int carAx = a-40;
  int topCarAy = 90;
  int bottomCarAy = 73;
  int carLineAx = a-39;
  int carLineA = 90;
  int frntWheelAx = a-20;
  int backWheelAx = a+20;
  int moveLineA = a+24;

  if (a > -40)
  {
    a = a + (int)random(8, 12);
  }

  if (a > 800)
  {
    a = 0;
  }
  fill(255, 0, 0);
  strokeWeight(2);
  rect(carAx, topCarAy, 80, 17);
  rect(carAx, bottomCarAy, 65, 17);
  stroke(255, 0, 0);
  line(carLineAx, carLineA, moveLineA, 90);
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  ellipse(frntWheelAx, 110, 15, 15);
  ellipse(backWheelAx, 110, 15, 15);
}  

//---------------
// Car B
//---------------
// Middle Lane
//---------------

void drawCarB()
{
  int carBx = b-40;
  int topCarBy = 200;
  int bottomCarBy = 183;
  int carLineBx = b-39;
  int carLineB = 200;
  int frntWheelBx = b-20;
  int backWheelBx = b+20;
  int moveLineB = b+24;

  if (b > -40)
  {
    b = b + (int)random(10, 12);
  }

  if (b > 800)
  {
    b = 0;
  }
  fill(0, 255, 0);
  strokeWeight(2);
  rect(carBx, topCarBy, 80, 17);
  rect(carBx, bottomCarBy, 65, 17);
  stroke(0, 255, 0);
  line(carLineBx, carLineB, moveLineB, 200);
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  ellipse(frntWheelBx, 220, 15, 15);
  ellipse(backWheelBx, 220, 15, 15);
}  

//---------------
// Car C
//---------------
// Bottom Lane
//---------------

void drawCarC()
{
  int carCx = c-40;
  int topCarCy = 310;
  int bottomCarCy = 293;
  int carLineCx = c-39;
  int carLineC = 310;
  int frntWheelCx = c-20;
  int backWheelCx = c+20;
  int moveLineC = c+24;

  if (c > -40)
  {
    c = c + (int)random(10, 15);
  }

  if (c > 800)
  {
    c = 0;
  }
  fill(0, 0, 255);
  strokeWeight(2);
  rect(carCx, topCarCy, 80, 17);
  rect(carCx, bottomCarCy, 65, 17);
  stroke(0, 0, 255);
  strokeWeight(2);
  line(carLineCx, carLineC, moveLineC, 310);
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  ellipse(frntWheelCx, 330, 15, 15);
  ellipse(backWheelCx, 330, 15, 15);
}  


//---------------
// Landscape
//---------------
// Roads & Grass
//---------------

void drawLandscape ()
{
  fill(105, 105, 105);
  rect(0, 55, width, 75);
  rect(0, 165, width, 75);
  rect(0, 275, width, 75);

  for (int i = 10; i < width-10; i = i+70) 
  {
    fill(255, 255, 210);
    strokeWeight(2);
    rect(i, 87, 35, 5);
    rect(i, 197, 35, 5);
    rect(i, 307, 35, 5);
  }
}

