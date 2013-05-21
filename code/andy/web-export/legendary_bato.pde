PImage [] imglist;
ArrayList <Item> myList = new ArrayList <Item> ();
int stickdirection;
int stickposition;
int stickx;
int sticky=400;
int stickyo = 400;
int stickpunching;
int sticktimer;
int downpressed;
int ground = 1;
int stickyspeed;
int stickjumpspeed = -25;
int stickrunning;
int stickjumping;
int stickpitching;
int stickxspeed;
int gamepause;
int pausetimer;
int pitchdirection;

void setup()
{
  frameRate(50);
  size(1200, 600);
  strokeWeight(1);
  stickdirection=1;
  imglist = new PImage [30];
  imglist[0] = loadImage("SITTINGMAN.png");
  imglist[1] = loadImage("walkingman1.png");
  imglist[2] = loadImage("walkingman2.png");
  imglist[3] = loadImage("walkingman3.png");
  imglist[4] = loadImage("walkingman4.png");
  imglist[5] = loadImage("walkingman5.png");
  imglist[6] = loadImage("walkingman6.png");
  //
  imglist[20] = loadImage("kickingman1.png");
  imglist[22] = loadImage("jumpingman3.png");
  imglist[21] = loadImage("kickingman3.png");

  //
  imglist[7] = loadImage("punchingman1.png");
  imglist[8] = loadImage("punchingman2.png");
  imglist[9] = loadImage("punchingman3.png");
  imglist[10] = loadImage("punchingman4.png");
  //
  imglist[11] = loadImage("jumpingman1.png");
  imglist[14] = loadImage("jumpingman2.png");
  imglist[17] = loadImage("jumpingman3.png");
  imglist[12] = loadImage("jumpingman4.png");
  imglist[15] = loadImage("jumpingman5.png");
  imglist[18] = loadImage("jumpingman6.png");
  imglist[13] = loadImage("jumpingman7.png");
  imglist[16] = loadImage("jumpingman8.png");
  imglist[19] = loadImage("jumpingman9.png");
  imglist[23] = loadImage("pitchingman1.png");
  imglist[24] = loadImage("pitchingman2.png");
  imglist[25] = loadImage("pitchingman3.png");
  imglist[26] = loadImage("pitchingman4.png");
  myList.add(new Item(200, 50, 100, 100));
}

void draw()
{
  println(sticktimer);
  movestick();
  if (pausetimer>0)
  {
    pausetimer--;
  }
  if (gamepause == 0)
  {
    background(255);
    stroke(0);
    line(0, 570, 1200, 570);
    gravity();
    stickrun();
    displayimage();
    myList.get(0).update();
  }
  else
  {
    textSize(30);
    fill(0, 102, 153);
    stroke(0, 102, 153);
    text("Paused, press -p- to unpause", 450, 250);
  }
}

void displayimage()
{
  if (pitchdirection == 1)
  {
    pushMatrix();
    translate(stickx, sticky);
    scale(-1, 1);
    image(imglist[stickposition], -200, 0, 200, 200);
    popMatrix();
  }
  else
  {
    image(imglist[stickposition], stickx, sticky, 200, 200);
  }
}
void stickrun()
{
  if (stickposition==0) //beginning position
  {
    if (stickjumping == 1) //jumping
    {
      if (stickrunning == 1) 
      {
        if (stickdirection == 1)
        {
          stickposition = 12;
          sticktimer = 10;
        }
        else if (stickdirection == -1)
        {
          stickposition = 13;
          sticktimer = 10;
        }
      }
      else
      {
        stickposition = 11;
        sticktimer = 10;
      }
    }
    else if (stickpunching == 1) // punching
    {
      if (stickdirection == 1)
      {
        stickposition = 9;
        stickx = stickx + 30;
        sticktimer = 5;
      }
      else if (stickdirection == -1)
      {
        stickposition = 10;
        stickx = stickx - 30;
        sticktimer = 5;
      }
    }
    else if (stickpitching == 1)
    {
      stickposition = 23;
      sticktimer = 6;
      stickyo = 390;
      sticky = sticky-10;
      if ( stickdirection == -1)
      {
        pitchdirection = 1;
      }
    }
    else if (stickrunning == 1) //running
    {
      if (stickdirection == 1)
      {
        stickposition = 1;
        stickx = stickx + 15;
      }
      if (stickdirection == -1)
      {
        stickposition = 4;
        stickx = stickx - 15;
      }
    }
  }
  else if (stickposition >=1 && stickposition < 4) //process running right
  {
    stickposition++;
    stickx = stickx + 15;
    if (stickposition ==4)
    {
      stickposition = 0;
    }
  }
  else if (stickposition >=4 && stickposition <7) //process running left
  {
    stickposition++;
    stickx = stickx - 15;
    if (stickposition == 7)
    {
      stickposition = 0;
    }
  }
  else if (stickposition >= 7 && stickposition <11) // process punching
  {
    if (sticktimer == 0)
    {
      if (stickposition == 9)
      {
        stickposition = 7;
        stickx = stickx + 30;
        sticktimer = 10;
      }
      else if (stickposition == 10)
      {
        stickposition = 8;
        stickx = stickx - 30;
        sticktimer = 10;
      }
      else
      {
        stickposition = 0;
      }
    }
    else
    {
      sticktimer--;
    }
  }
  else if (stickposition >= 11 && stickposition <20) // process jumping
  {
    if (sticktimer == 0)
    {
      if (stickposition >= 11 && stickposition <14)
      {
        ground=0;
        stickyspeed=stickjumpspeed;
        stickposition = stickposition + 3;
      }
      else if (stickposition >= 14)
      {
        if (stickposition < 17)
        {
          if (stickxspeed == 0)
          {
            stickposition = 14;
          }
          else if (stickxspeed > 0)
          {
            if (stickpunching == 0)
            { 
              stickposition = 15;
            }
            else
            {
              stickposition = 20;
            }
          }
          else
          {
            if (stickpunching == 0)
            { 
              stickposition = 16;
            }
            else
            {
              stickposition = 21;
            }
          } 
          if (stickyspeed > 2 && stickpunching == 0)
          {
            stickposition = stickposition +3;
          }
        }
        else
        {
          if (ground == 1)
          {
            stickposition = 0;
            stickxspeed = 0;
          }
          else if (stickxspeed == 0)
          {
            stickposition = 17;
          }
          else if (stickxspeed > 0)
          {
            if (stickpunching == 0)
            { 
              stickposition = 18;
            }
            else
            {
              stickposition = 20;
            }
          }
          else
          {
            if (stickpunching == 0)
            { 
              stickposition = 19;
            }
            else
            {
              stickposition = 21;
            }
          }
        }
      }
    }
    else
    {
      sticktimer--;
    }
  }
  else if (stickposition >= 20 && stickposition <23) //kicking
  {
    if (ground == 0)
    {
      if (sticktimer == 0)
      {
        sticktimer = 5;
      }
    }
    else
    {
      stickposition = 22;
      stickxspeed = 0;
      sticktimer--;
      if (sticktimer == 0)
      {
        stickposition = 0;
      }
    }
  }
  else if (stickposition >= 23 && stickposition <27)
  {
    if (sticktimer == 0)
    {
      stickposition++;
      if (stickposition == 27)
      {
        stickposition = 0;
        stickyo = 400;
        sticky = 400;
        pitchdirection = 0;
      }
      else
      {
        sticktimer = 4;
      }
    }
    else
    {
      sticktimer--;
    }
  }
}
void gravity()
{
  myList.get(0).gravity();
  if (ground == 0)
  {
    stickyspeed = stickyspeed + 1;
    if (stickrunning == 1 && stickxspeed < 10 && stickdirection ==1)
    {
      stickxspeed = stickxspeed + 2;
    }
    else if (stickrunning == 1 && stickdirection == -1 && stickxspeed > -10)
    {
      stickxspeed = stickxspeed - 2;
    }
  }
  sticky = sticky + stickyspeed;
  stickx = stickx + stickxspeed;
  if (sticky>stickyo)
  {
    sticky = stickyo;
    stickyspeed = 0;
    ground = 1;
  }
}
class Item
{
  int itemx;
  int itemy;
  int itemgr;
  int itemxspeed;
  int itemyspeed;
  int itemxsize;
  int itemysize;
  int itemyo = 565;
  Item(int a, int b, int c, int d)
  {
    itemx=a;
    itemy=b;
    itemxsize=c;
    itemysize=d;
  }
  void update()
  {
    fill(0);
    ellipse(itemx, itemy, itemxsize, itemysize);
  }
  void gravity()
  {
    if (itemgr == 0)
    {
      itemyspeed = itemyspeed + 1;
    }
    itemy = itemy + itemyspeed;
    itemx = itemx + itemxspeed;
    if (itemy+itemysize/2>itemyo)
    {
      itemy = itemyo - itemysize/2;
      itemyspeed = 0;
      itemgr = 1;
    }
  }
}


void movestick()
{
  if (keyPressed==false)
  {
    stickjumping=0;
    stickrunning = 0;
    stickpunching = 0;
    stickpitching = 0;
  }
  else
  {
    if (keyCode==LEFT)
    {
      stickdirection=-1;
      stickrunning = 1;
    }
    else if (keyCode==RIGHT)
    {
      stickdirection=1;
      stickrunning = 1;
    }
    if (keyCode==DOWN)
    {
      downpressed=1;
    }
    else if (keyCode==UP)
    {
      if (ground==1)
      {
        stickjumping=1;
      }
      else
      {
      }
    }
    if (keyCode == CONTROL)
    {
      stickpunching=1;
    } 
    if (key == 'z')
    {
      stickpitching = 1;
    }
    if (key == 'p' || key == 'P')
    {
      if (pausetimer == 0)
      {
        if (gamepause == 0 )
        {
          gamepause = 1;
        }
        else
        {
          gamepause = 0;
        }
        pausetimer = 10;
      }
    }
  }
}
class Animation
{
  //set timers, set pictures, set distance moved
  PImage [] myImageList;
  int [] imagetimer;
  int [] imagedist;
  int numImages = 0;
  int curr = 0;

  Animation()
  {
    myImageList = new PImage[10];
  }

  void addImage(PImage p, int a, int b)
  {
    myImageList[numImages] = p;
    imagetimer[numImages] = a;
    imagedist[numImages] = b;
    numImages++;
  }

  void update()
  {
    curr++;
    if (curr == numImages)
      curr = 0;
  }

  void drawImage(int x, int y)
  {
    image(myImageList[curr], x, y, 200, 200);
  }
}


