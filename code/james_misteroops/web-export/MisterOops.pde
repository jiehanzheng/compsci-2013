/* @pjs globalKeyEvents="true"; */

int timer;
int delay=65;
int stonescore;
boolean allstones;
man troll;
stone [] stonelist;
digitDisplay ones;
digitDisplay tens;
digitDisplay hundreds;
int stonecounter=-1;
void setup()
{
  size(400, 400);
  frameRate(50);
  stonelist= new stone[50];
  troll=new man(3, 2);
  allstones=false;
  ones= new digitDisplay(370, 5, stonescore%10);
  tens= new digitDisplay(345, 5, ((stonescore-stonescore%10)%100)/10);
  hundreds= new digitDisplay(320, 5, (stonescore-(stonescore%100)%1000)/100);
}
void draw()
{
  drawboard();
  text("Click on board, then use arrows to move", 10, 10);
  if (allstones==true)
  {
    for (int i=0;i<50;i++)
    {
      stonelist[i].movestone();
    }
  }
  else
  {
    if (stonecounter>=0)
    {
      for (int i=0;i<=stonecounter;i++)
      {
        stonelist[i].movestone();
      }
    }
  }
  score();
  spawnstones();
  troll.moveman();
  troll.drawman();
  if (troll.dead)
    noLoop();
}

class man
{
  int waitmove=0;
  int manxP;
  int manyP;
  int manxI;
  int manyI;
  boolean dead = false;
  man(int a, int b)
  {
    manxP=a;
    manyP=b;
  }
  void moveman()
  {
    if (keyPressed==true&&waitmove>10&&dead==false)
    {
      waitmove=0;
      if (keyCode==UP&&manyP>0)
      {
        manyP--;
      }
      if (keyCode==DOWN&&manyP<5)
      {
        manyP++;
      }
      if (keyCode==RIGHT&&manxP<5)
      {
        manxP++;
      }
      if (keyCode==LEFT&&manxP>0)
      {
        manxP--;
      }
    }
    waitmove++;
  }
  void drawman()
  {
    manxI=75+50*manxP;
    manyI=75+50*manyP;
    line(manxI, manyI+5, manxI+10, manyI+20);
    line(manxI, manyI+5, manxI-10, manyI+20);
    line(manxI, manyI+5, manxI, manyI-10);
    line(manxI, manyI-5, manxI-15, manyI);
    line(manxI, manyI-5, manxI+15, manyI);
    fill(0, 0, 255);
    if (dead==true)
    {
      fill(255, 0, 0);
    }
    ellipse(manxI, manyI-15, 10, 10);
  }
}

class stone
{
  float stoneX;
  float stoneY;
  float stonespeedX;
  float stonespeedY;
  boolean roundfinish;
  float totalstonespeed;
  int pct;
  int direction;
  stone(float a, float b, float c, float d)
  {
    stoneX=75+50*a;
    stoneY=75+50*b;
    stonespeedX=c;
    stonespeedY=d;
    totalstonespeed=stonespeedX+stonespeedY;
    if (stonespeedX==0)
    {
      if (stonespeedY>0)
      {
        direction=0;
        stoneY=stoneY-25;
      }
      else
      {
        direction=1;
        stoneY=stoneY+25;
      }
    }
    if (stonespeedY==0)
    {
      if (stonespeedX>0)
      {
        direction=2;
        stoneX=stoneX-25;
      }
      else
      {
        direction=3;
        stoneX=stoneX+25;
      }
    }
  }
  void movestone()
  {
    if (pct<10||(20<pct&&pct<30)||(40<pct&&pct<50))
    {
      fill(255, 0, 0);
      if (direction==0)
      {
        //down
        quad(stoneX+5, stoneY-35, stoneX+5, stoneY-15, stoneX-5, stoneY-15, stoneX-5, stoneY-35);
        triangle(stoneX+15, stoneY-15, stoneX-15, stoneY-15, stoneX, stoneY-5);
      }
      if (direction==1)
      {
        //up
        quad(stoneX+5, stoneY-35, stoneX+5, stoneY-15, stoneX-5, stoneY-15, stoneX-5, stoneY-35);
        triangle(stoneX+15, stoneY-35, stoneX-15, stoneY-35, stoneX, stoneY-45);
      }
      if (direction==2)
      {
        //right
        quad(stoneX-35, stoneY+5, stoneX-15, stoneY+5, stoneX-15, stoneY-5, stoneX-35, stoneY-5);
        triangle(stoneX-15, stoneY+15, stoneX-15, stoneY-15, stoneX-5, stoneY);
      }
      if (direction==3)
      {
        //left
        quad(stoneX-35, stoneY+5, stoneX-15, stoneY+5, stoneX-15, stoneY-5, stoneX-35, stoneY-5);
        triangle(stoneX-35, stoneY+15, stoneX-35, stoneY-15, stoneX-45, stoneY);
      }
    }
    else if (pct>=50)
    {
      fill(210, 105, 30);
      ellipse(stoneX, stoneY, 40, 40);
      stoneX=stoneX+stonespeedX;
      stoneY=stoneY+stonespeedY;
    }
    if (abs(stoneX-troll.manxI)<20&&abs(stoneY-troll.manyI)<25)
    {
      troll.dead=true;
      println("dead");
    }
    pct++;
  }
}

void drawboard()
{
  int i;
  fill(100, 100, 100);
  quad(0, 0, 400, 0, 400, 400, 0, 400);
  fill(255, 255, 255);
  quad(50, 50, 350, 50, 350, 350, 50, 350);
  for (i=1;i<6;i++)
  {
    line(50+50*i, 50, 50+50*i, 350);
    line(50, 50+50*i, 350, 50+50*i);
  }
}

void spawnstones()
{
  int c;
  int randomizer;
  if (timer>delay)
  {
    if (delay>15)
    {
      delay--;
    }
    timer=0;
    if (troll.dead==false)
    {
      stonescore++;
    }
    c=int(random(1, 5));
    for (int i=0;i<c;i++)
    {
      randomizer=int(random(0, 4));
      stonecounter++;
      if (stonecounter>49)
      {
        stonecounter=0;
        allstones=true;
      }
      if (randomizer==0)
      {
        stonelist[stonecounter]= new stone(0, int(random(.5, 5.5)), 2, 0);
      }
      if (randomizer==1)
      {
        stonelist[stonecounter]= new stone(int(random(.5, 5.5)), 0, 0, 2);
      }
      if (randomizer==2)
      {
        stonelist[stonecounter]= new stone(int(random(.5, 5.5)), 6, 0, -2);
      }
      if (randomizer==3)
      {
        stonelist[stonecounter]= new stone(6, int(random(.5, 5.5)), -2, 0);
      }
    }
  }
  timer++;
}

void score()
{
  ones.update(stonescore%10);
  tens.update(((stonescore-stonescore%10)%100)/10);
  hundreds.update((stonescore-(stonescore%100)%1000)/100);
}

class digitDisplay
{
  float displayX;
  float displayY;
  int digit;
  digitDisplay(float a, float b, int c)
  {
    displayX=a;
    displayY=b;
    digit=c;
  }
  void update(int d)
  {
    digit=d;
    if (digit==0)
    {
      line(displayX, displayY, displayX+20, displayY);
      line(displayX+20, displayY, displayX+20, displayY+40);
      line(displayX+20, displayY+40, displayX, displayY+40);
      line(displayX, displayY+40, displayX, displayY);
    }
    if (digit==1)
    {
      line(displayX+15, displayY+40, displayX+15, displayY);
      line(displayX+15, displayY, displayX+5, displayY+10);
    }
    if (digit==2)
    {
      line(displayX, displayY, displayX+20, displayY);
      line(displayX+20, displayY, displayX+20, displayY+20);
      line(displayX+20, displayY+20, displayX, displayY+20);
      line(displayX, displayY+20, displayX, displayY+40);
      line(displayX, displayY+40, displayX+20, displayY+40);
    }
    if (digit==3)
    {
      line(displayX+20, displayY+40, displayX+20, displayY);
      line(displayX+20, displayY, displayX, displayY);
      line(displayX+20, displayY+20, displayX, displayY+20);
      line(displayX+20, displayY+40, displayX, displayY+40);
    }
    if (digit==4)
    {
      line(displayX, displayY, displayX, displayY+20);
      line(displayX, displayY+20, displayX+20, displayY+20);
      line(displayX+20, displayY, displayX+20, displayY+40);
    }
    if (digit==5)
    {
      line(displayX, displayY, displayX+20, displayY);
      line(displayX, displayY, displayX, displayY+20);
      line(displayX, displayY+20, displayX+20, displayY+20);
      line(displayX+20, displayY+20, displayX+20, displayY+40);
      line(displayX+20, displayY+40, displayX, displayY+40);
    }
    if (digit==6)
    {
      line(displayX, displayY, displayX+20, displayY);
      line(displayX, displayY, displayX, displayY+40);
      line(displayX, displayY+20, displayX+20, displayY+20);
      line(displayX, displayY+40, displayX+20, displayY+40);
      line(displayX+20, displayY+40, displayX+20, displayY+20);
    }
    if (digit==7)
    {
      line(displayX+10, displayY+40, displayX+20, displayY);
      line(displayX+20, displayY, displayX, displayY);
    }
    if (digit==8)
    {
      line(displayX, displayY, displayX+20, displayY);
      line(displayX, displayY, displayX, displayY+40);
      line(displayX+20, displayY, displayX+20, displayY+40);
      line(displayX, displayY+40, displayX+20, displayY+40);
      line(displayX, displayY+20, displayX+20, displayY+20);
    }
    if (digit==9)
    {
      line(displayX, displayY, displayX+20, displayY);
      line(displayX, displayY, displayX, displayY+20);
      line(displayX+20, displayY, displayX+20, displayY+40);
      line(displayX, displayY+20, displayX+20, displayY+20);
      line(displayX+20, displayY+40, displayX, displayY+40);
    }
  }
}


