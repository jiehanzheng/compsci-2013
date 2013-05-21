float xscreenspeed;
float yscreenspeed;
float mariox=675;
float marioy=368;
float mariosize;
float mariowalkspeed;
float mariojumpspeed;
float marioyspeed;
float univgravity;
float specgravity;
float yerror;
float shellspeed;
float mariorecentlysmall;
float marioimmunecounter;
int overallcounter=0;
int mariowalkcancel;
int ground;
int deathlength;
int globalcounter;
int fireballcounter;
int groundchange;
int direction;
int shellspeedcancel=1;
int mariowalk;
int situation;
int mariodirection;
int mariowalkleft;
int mariowalkright;
int mariofirehat;
int downpressed;
int teleportvariable;
int mariodead;
int coins;
float deathspeed;
int fireballshot;
int fireballcancel;
float aa,bb,cc,dd;
float marioturn=0;
float mariottt;
koopa [] koopalist;
goomba [] goombalist;
platform [] platformlist;
block [] blocklist;
itembox [] itemboxlist;
flower [] flowerlist;
special [] speciallist;
fireball [] fireballlist;
number [] numberlist;
int deathcheck;
int deathset;
int platforms;
int blocks;
int itemboxs;
int goombas;
int koopas;
int flowers;
int specials;
int fireballs;
int numbers;

void setup()
{
  int i;
  platforms=29;
  blocks=17;
  itemboxs=2;
  goombas=2;
  koopas=3;
  flowers=1;
  specials=26;
  fireballs=0;
  numbers=6;
  mariodead=1;
  mariosize=55;
  shellspeed=8;
  mariodirection=1;
  mariox=675;
  marioy=368;
  koopalist= new koopa [koopas];
  goombalist= new goomba [goombas];
  platformlist= new platform [platforms];
  blocklist= new block [blocks];
  itemboxlist= new itembox [itemboxs];
  flowerlist= new flower [flowers];
  speciallist= new special [specials];
  fireballlist= new fireball [fireballs];
  numberlist= new number [numbers];
  univgravity=.23;
  deathlength=100;
  deathcheck=0;
  fireballcancel=0;
  fireballcounter=0;
  mariowalkspeed=5;
  mariojumpspeed=10;
  coins=0;
  mariofirehat=0;
  frameRate(10000);
  size(1350,736);
  marioyspeed=0;
  koopalist[0]=new koopa(200,400,300,400,70,2,0,0);
  koopalist[1]=new koopa(-100,500,-150,450,50,2,2,1);
  koopalist[2]=new koopa(850,1300,1500,200,70,2,1,2);
 
  goombalist[0]=new goomba(100,700,300,800, 65, 3,0);
  goombalist[1]=new goomba(1300,1800,1500,200, 65, 2,1);
  
  platformlist[0]= new platform(100,700,(800),(850),0,255,0,0,1,0);
  platformlist[1]= new platform(300,900,(600),(650),255,135,0,0,0,1);
  platformlist[2]= new platform(200,400,(400),(470),255,255,255,0,1,2);
  platformlist[3]= new platform(635,715,(300),(470),215,50,240,0,12,3);
  platformlist[4]= new platform(870,1900,(200),(550),255,215,0,0,0,4);
  platformlist[5]= new platform(-100,150,(500),(550),100,20,180,0,0,5);
  platformlist[6]= new platform(0,350,(50),(-100),255,100,50,0,1,6);
  platformlist[7]= new platform(-500,2220,(-1200),(-1000),0,40,0,0,0,7);
  platformlist[8]= new platform(-500,2220,(1000),(1020),0,40,0,0,0,8);
  platformlist[9]= new platform(-525,-500,(-1000),(1000),0,40,0,0,0,9);
  platformlist[10]= new platform(2200,2220,(-1000),(1000),0,40,0,0,0,10);
  platformlist[11]= new platform(2000,2050,(800),(850),0,0,255,0,6,11);
  platformlist[12]= new platform(635,715,(0),(200),215,50,240,0,13,12);
  platformlist[13]= new platform(540,620,(0),(200),215,50,240,0,15,13);
  platformlist[14]= new platform(540,620,(300),(470),215,50,240,0,14,14);
  platformlist[15]= new platform(635,715,(-400),(-200),215,50,240,0,2,15);
  platformlist[16]= new platform(635,715,(-1200),(-1000),215,50,240,0,3,16);
  platformlist[17]= new platform(-400,-320,(400),(600),215,50,240,0,4,17);
  platformlist[18]= new platform(2220,2300,(10000),(10200),215,50,240,0,5,18);
  platformlist[19]= new platform(1700,1800,(-10),(50),215,50,240,0,5,19);
  platformlist[20]= new platform(1500,1600,(7900),(7900),0,0,0,1,0,20);
  platformlist[21]= new platform(1500,1500,(7800),(7900),0,0,0,1,0,21);
  platformlist[22]= new platform(2310,2400,(10510),(10250),135,206,250,1,0,22);
  platformlist[23]= new platform(2120,2200,(680),(900),215,50,240,0,15,23);
  platformlist[24]= new platform(950,1850,(-500),(-450),0,0,0,0,0,24);
  platformlist[25]= new platform(950,1000,(-500),(0),215,0,0,0,0,25);
  platformlist[26]= new platform(1800,1850,(-500),(-10),215,0,0,0,0,26);
  platformlist[27]= new platform(1150,1800,(-150),(-100),255,255,255,0,0,27);
  platformlist[28]= new platform(1500,1550,(-20),(-100),135,206,250,1,0,28);
  
  flowerlist[0]= new flower(580,0,.3,1,2,10,0);
  
  blocklist[0]= new block(730,250,1,0,0);
  blocklist[1]= new block(850,400,2,1,1);
  blocklist[2]= new block(1000,0,0,1,2);
  blocklist[3]= new block(1050,0,1,0,3);
  blocklist[4]= new block(1100,0,1,0,4);
  blocklist[5]= new block(1150,0,1,0,5);
  blocklist[6]= new block(1200,0,0,1,6);
  blocklist[7]= new block(1250,0,1,1,7);
  blocklist[8]= new block(1300,0,0,0,8);
  blocklist[9]= new block(1350,0,1,1,9);
  blocklist[10]= new block(1400,0,0,0,10);
  blocklist[11]= new block(1450,0,1,0,11);
  blocklist[12]= new block(1500,0,2,0,12);
  blocklist[13]= new block(1550,0,1,0,13);
  blocklist[14]= new block(1600,0,0,1,14);
  blocklist[15]= new block(1650,0,1,0,15);
  blocklist[16]= new block(1130,-180,0,0,16);
  
  itemboxlist[0]= new itembox(100,250,1,0,0);
  itemboxlist[1]= new itembox(400,-1400,0,1,1);
  
  speciallist[0]= new special(1400,200,0,95,0,2,0);
  speciallist[1]= new special(1800,200,-1,95,0,0,1);
  for(i=2;i<specials;i++)
  {
    speciallist[i]= new special(1700-i*15,-150,random(-1,1),95,0,2,i);
  }
}

void draw()
{
  background(135,206,250);
  marioimmune();
  situation=0;
  direction();
  if(mariodead<0)
  {
    mariodead=0;
  }
  if(mariodead==0)
  {
    mariowalkspeed=0;
    mariojumpspeed=0;
    univgravity=0;
    specgravity=0;
    if(deathcheck==0)
    {
      deathcheck=1;
      frameCount=0;
      marioyspeed=0;
      deathspeed=10;
    }
    if(deathcheck==1)
    {
      if(frameCount<deathlength*.1)
      {
      }
      else if(frameCount<deathlength)
      {
        marioy=marioy-deathspeed;
        deathspeed=deathspeed-.5;
      }
    }
  }
  fireballcounter=fireballcounter+1;
  drawmario();
  movemario();
  ground=0;
  mariowalkcancel=0;
  mariowalkright=0;
  mariowalkleft=0;
  updatekoopas();
  updateflowers();
  updatespecials();
  updateitemboxs();
  checkplatforms();
  updateblocks();
  updategoombas();
  updatefireballs();
  situation();
  scores();
  updatenumbers();
  if(mariodead>0)
  {
    overallcounter=overallcounter+1;
  }
  if(mousePressed==false);
  {
  }
  if(mousePressed==true)
  {
    setup(); 
  }
}

class platform
{
  float xstart;
  float xend;
  float ystart;
  float yend;
  float redshade;
  float greenshade;
  float blueshade;
  int platformtype;
  int platformnumber;
  int outline;
  int ylines;
  int xlines;
  int i;
  int j;
  int slide;
  platform(float a,float b,float c,float d,float e, float f, float g, int h, int i, int j)
  {
    xstart=a;
    xend=b;
    ystart=d;
    yend=c;
    redshade=e;
    greenshade=f;
    blueshade=g;
    outline=h;
    platformtype=i;
    platformnumber=j;
  }
  void update()
  {
    noStroke();
    if(platformtype==10)
    {
      xstart=-1000;
      xend=-1000;
      ystart=-1000;
      yend=-1000;
    }
    else if(situation ==40)
    {
      if(platformtype % 10 == 2 && teleportvariable == platformtype/10)
      {}
      if(platformtype % 10 == 3&& teleportvariable == platformtype/10)
      {
        cc = (xstart+xend)/2;
        dd = yend;
      }
    }
    else if(situation ==60 )
    {
      if(platformtype % 10 == 5&& teleportvariable == platformtype/10)
      {}
      if(platformtype % 10 == 4&& teleportvariable == platformtype/10)
      {
        cc = (xstart+xend)/2;
        dd = yend;
      }
    }
    else
    {
      xstart=xstart+xscreenspeed;
      xend=xend+xscreenspeed;
      yend=yend+yscreenspeed;
      ystart=ystart+yscreenspeed;
      strokeWeight(1);
      if(outline==0)
      {
        stroke(0,0,0);
      }
      else
      {
        noStroke();
      }
      fill(redshade,greenshade,blueshade);
      quad(xstart,ystart,xstart,yend,xend,yend,xend,ystart);
      if(platformtype % 10 == 2 || platformtype % 10 == 4)
      {
        quad(xstart-10,ystart+(yend-ystart)/6,xstart-10,ystart,xend+10,ystart,xend+10,ystart+(yend-ystart)/6);
      }
      if (platformtype % 10 == 3 || platformtype % 10 == 5)
      {
        quad(xstart-10,yend-(yend-ystart)/6,xstart-10,yend,xend+10,yend,xend+10,yend-(yend-ystart)/6);
      }
      if(mariodead>0)
      {  
        if(abs(marioy+mariosize*1.1-10-yend)<15&&(mariox+mariosize*.3)>xstart&&(mariox-mariosize*.3)<xend&&direction==0)
        {
          situation=1;
          if((mariox+mariosize*.4)<xend&&(mariox-mariosize*.4)>xstart&& platformtype % 10 == 5 && downpressed == 1)
          {
            situation = 5;
            mariowalkspeed = 0;
          }
          else 
          {
            yerror=marioy+mariosize*1.1-yend;
          }
        }
        if (platformtype % 10 == 4 && (mariox+mariosize*.4)<xend&&(mariox-mariosize*.4)>xstart)
        { 
          if ((marioy-mariosize*.38)<ystart && (marioy-mariosize*.38)>yend && teleportvariable == platformtype/10)
          {
            situation = 5;
          }
        }
        if (platformtype % 10 == 5 && (mariox+mariosize*.4)<xend&&(mariox-mariosize*.4)>xstart)
        {
          if(abs((marioy+mariosize*1.0)-ystart)<mariosize*.1)
          {
            situation=6;
            aa =(xstart+xend)/2;
            bb = yend;
            teleportvariable = platformtype/10;
          }
          else if ((marioy+mariosize*.38)<ystart && (marioy+mariosize*.38)>yend)
          {
            situation = 5;
          }
        }
        if (platformtype % 10 == 2 && (mariox+mariosize*.4)<xend&&(mariox-mariosize*.4)>xstart&&direction==1)
        {
          if(abs((marioy-mariosize*.38)-yend)<mariosize*.2)
          {
            situation=4;
            teleportvariable = platformtype/10;
            aa = (xstart+xend)/2;
            bb = yend; 
          }
          else if ((marioy-mariosize*.38)< ystart && (marioy-mariosize*.38)>yend)
          {
            situation = 3;
          }
        }
        if(abs((marioy-mariosize*.38)-ystart)<mariosize*.2&&(mariox+mariosize*.3)>xstart&&(mariox-mariosize*.3)<xend&&direction==1)
        {
          situation=2;
          if((mariox+mariosize*.4)<xend&&(mariox-mariosize*.4)>xstart&& platformtype % 10 == 2)
          {
            situation = 3;
          }
          if(platformtype==1)
          {
            platformtype=10;
          }
        }
        if(abs((mariox+mariosize*.05)-xstart)<mariosize*.45&&marioy+mariosize*1-yend>0&&ystart+mariosize*.52-marioy>0)
        {
          mariowalkright=1;
        }
        if(abs(xend+mariosize*.05-mariox)<mariosize*.45&&marioy+mariosize*1-yend>0&&ystart+mariosize*.52-marioy>0)
        {
          mariowalkleft=1;
        }
      } 
    }
    platformlist[platformnumber].xstart=xstart;
    platformlist[platformnumber].xend=xend;
    platformlist[platformnumber].ystart=ystart;
    platformlist[platformnumber].yend=yend;
  }
}

class block
{
  float xpos;
  float ypos;
  int breaks;
  int blocknumber;
  int dead;
  int invis;
  int i;
  int j;
  block(float a,float b,int c,int d,int e)
  {
    xpos=a;
    ypos=b;
    breaks=c;
    invis=d;
    blocknumber=e;
  }
  void update()
  {
    noStroke();
    if(dead==1)
    {
      xpos=-10000;
      ypos=-10000;
    }
    else
    {
      xpos=xpos+xscreenspeed;
      ypos=ypos+yscreenspeed;
      strokeWeight(1);
      stroke(0,0,0);
      if(invis==0)
      {
        if(breaks==0)
        {
          fill(210,105,30);
          quad(xpos,ypos,xpos+50,ypos,xpos+50,ypos+50,xpos,ypos+50);
        }
        if(breaks==1||breaks==2)
        {
          fill(139,69,19);
          quad(xpos,ypos,xpos+50,ypos,xpos+50,ypos+50,xpos,ypos+50);
          line(xpos+25,ypos,xpos+25,ypos+50/3);
          line(xpos+50/4,ypos+50/3,xpos+50/4,ypos+100/3);
          line(xpos+150/4,ypos+50/3,xpos+150/4,ypos+100/3);
          line(xpos+25,ypos+100/3,xpos+25,ypos+50);
          line(xpos,ypos+50/3,xpos+50,ypos+50/3);
          line(xpos,ypos+100/3,xpos+50,ypos+100/3);
        }
      }
      if(mariodead>0)
      {
        if(abs(marioy+mariosize*1.1-15-ypos)<15&&(mariox+mariosize*.3)>xpos&&(mariox-mariosize*.3)<xpos+50&&direction==0)
        {
          situation=1;
          yerror=marioy+mariosize*1.1-ypos;
        }
        if(abs((marioy-mariosize*.38)-(ypos+50))<mariosize*.2&&(mariox+mariosize*.3)>xpos&&(mariox-mariosize*.3)<xpos+50&&direction==1)
        {
          situation=2;
          if(invis==1)
          {
            invis=0;
          }
          if(breaks==1)
          {
            breaks=0;
          }
          if(breaks==2)
          {
            dead=1;
          }
        }
        if(abs((mariox+mariosize*.05)-xpos)<mariosize*.45&&marioy+mariosize*1-ypos>0&&ypos+50+mariosize*.52-marioy>0)
        {
          mariowalkright=1;
        }
        if(abs(xpos+50+mariosize*.05-mariox)<mariosize*.45&&marioy+mariosize*1-ypos>0&&ypos+50+mariosize*.52-marioy>0)
        {
          mariowalkleft=1;
        }
      }
    }
  }
}

class itembox
{
  float xpos;
  float ypos;
  int item;
  int invis;
  int itemboxnumber;
  int dead;
  int i;
  int j;
  itembox(float a,float b,int c,int d, int e)
  {
    xpos=a;
    ypos=b;
    item=c;
    invis=d;
    itemboxnumber=e;
  }
  void update()
  {
    xpos=xpos+xscreenspeed;
    ypos=ypos+yscreenspeed;
    if(invis==0)
    {
      strokeWeight(1);
      stroke(0,0,0);
      if(dead==0)
      {
        fill(255,210,0);
      }
      if(dead==1)
      {
        fill(210,105,30);
      }
      stroke(0,0,0);
      quad(xpos,ypos,xpos+50,ypos,xpos+50,ypos+50,xpos,ypos+50);
      if(dead==0)
      {
        noStroke();
        fill(255,255,255);
        quad(xpos+10,ypos+20,xpos+20,ypos+20,xpos+20,ypos+12,xpos+10,ypos+12);
        quad(xpos+10,ypos+12,xpos+15,ypos+5,xpos+35,ypos+5,xpos+40,ypos+12);
        quad(xpos+40,ypos+12,xpos+30,ypos+12,xpos+30,ypos+20,xpos+40,ypos+20);
        quad(xpos+35,ypos+27,xpos+40,ypos+20,xpos+25,ypos+20,xpos+20,ypos+27);
        quad(xpos+20,ypos+27,xpos+30,ypos+27,xpos+30,ypos+35,xpos+20,ypos+35);
        quad(xpos+20,ypos+45,xpos+20,ypos+38,xpos+30,ypos+38,xpos+30,ypos+45);
        fill(70,70,70);
        ellipse(xpos+5,ypos+5,5,5);
        ellipse(xpos+45,ypos+5,5,5);
        ellipse(xpos+45,ypos+45,5,5);
        ellipse(xpos+5,ypos+45,5,5);
      }
    }
    if(mariodead>0)
    {
      if(abs(marioy+mariosize*1.1-15-ypos)<15&&(mariox+mariosize*.3)>xpos&&(mariox-mariosize*.3)<xpos+50&&direction==0)
      {
        situation=1;
        yerror=marioy+mariosize*1.1-ypos;
      }
      if(abs((marioy-mariosize*.38)-(ypos+50))<mariosize*.2&&(mariox+mariosize*.3)>xpos&&(mariox-mariosize*.3)<xpos+50&&direction==1)
      {
        situation=2;
        if(invis==1)
        {
          invis=0;
        }
        if(dead==0)
        {
          if(item==0)
          {
            specials=specials+1;
            speciallist= (special[])expand(speciallist,specials);
            speciallist[specials-1]= new special(xpos+25,ypos+50,2,95,1,0,specials-1);
            dead=1;
          }
          if(item==1)
          {
            specials=specials+1;
            speciallist= (special[])expand(speciallist,specials);
            speciallist[specials-1]= new special(xpos+25,ypos+50,2,95,1,1,specials-1);
            dead=1;
          }
          if(item==2)
          {
          specials=specials+1;
          speciallist= (special[])expand(speciallist,specials);
          speciallist[specials-1]= new special(xpos+25,ypos+50,2,95,1,1,specials-1);
          dead=1;
          }
        }
      }
      if(abs((mariox+mariosize*.05)-xpos)<mariosize*.45&&marioy+mariosize*1-ypos>0&&ypos+50+mariosize*.52-marioy>0)
      {
        mariowalkright=1;
      }
      if(abs(xpos+50+mariosize*.05-mariox)<mariosize*.45&&marioy+mariosize*1-ypos>0&&ypos+50+mariosize*.52-marioy>0)
      {
        mariowalkleft=1;
      }
    }
  }
}


class goomba
{
  float goombaxmin;
  float goombaxmax;
  float goombax;
  float goombay;
  float goombasize;
  float goombaspeed;
  float goombaxcounter;
  float dead;
  float goombayspeed;
  float goombayacc;
  int i;
  int goombanumber;
  goomba(float a,float b,float c, float d, float e, float f, int g)
  {
    goombaxmin=a;
    goombaxmax=b;
    goombax=c;
    goombay=d;
    goombasize=e;
    goombaspeed=f;
    goombaxcounter=goombax;
    dead=0;
    goombayspeed=0;
    goombayacc=0;
    goombanumber=g;
  }
  void update()
  {
    if(dead==0)
    {
      goombax=goombax+xscreenspeed+goombaspeed;
      goombaxcounter=goombaxcounter+goombaspeed;
      goombayspeed=goombayspeed+goombayacc;
      goombay=goombay+yscreenspeed+goombayspeed;
      if(mariodead>0)
      {
        for(i=0;i<goombas;i++)
        {
          if(abs(goombax-goombalist[i].goombax)<75&&goombay+70-goombalist[i].goombay>0&&goombay-70-goombalist[i].goombay<0)
          {
            if(goombanumber!=i)
            {
              if(goombax<goombalist[i].goombax)
              {
                goombaspeed=-abs(goombaspeed);
              }
              if(goombax>goombalist[i].goombax)
              {
                goombaspeed=abs(goombaspeed);
              }
            }
          }
        }
        for(i=0;i<platforms;i++)
        {
          if(goombax+20>platformlist[i].xstart&&goombax-20<platformlist[i].xend&&abs(goombay-10-platformlist[i].xend)<goombasize*.2)
          {
            if(abs(goombax-15-platformlist[i].xstart)<20)
            {
              goombaspeed=abs(goombaspeed);
            }
            if(abs(platformlist[i].xend-goombax-15)<20)
            {
              goombaspeed=-abs(goombaspeed);
            }
          }
        }
        for(i=0;i<blocks;i++)
        {
          if(goombax+20>blocklist[i].xpos&&goombax-20<blocklist[i].xpos+50&&abs(goombay-10-blocklist[i].ypos)<goombasize*.2)
          {
            if(abs(goombax-15-blocklist[i].xpos)<20)
            {
              goombaspeed=abs(goombaspeed);
            }
            if(abs(blocklist[i].xpos+50-goombax-15)<20)
            {
              goombaspeed=-abs(goombaspeed);
            }
          }
        }
        for(i=0;i<itemboxs;i++)
        {
          if(goombax+20>itemboxlist[i].xpos&&goombax-20<itemboxlist[i].xpos+50&&abs(goombay-10-itemboxlist[i].ypos)<goombasize*.2)
          {
            if(abs(goombax-15-itemboxlist[i].xpos)<20)
            {
              goombaspeed=abs(goombaspeed);
            }
            if(abs(itemboxlist[i].xpos+50-goombax-15)<20)
            {
              goombaspeed=-abs(goombaspeed);
            }
          }
        }
        goombayacc=univgravity;
        for(i=0;i<platforms;i++)
        {
          if(goombax+20>platformlist[i].xstart&&goombax-20<platformlist[i].xend&&abs(goombay-10-platformlist[i].yend)<goombasize*.2)
          {
             goombay=platformlist[i].yend;
             goombayspeed=0;
             goombayacc=0;
          }
        }
        for(i=0;i<blocks;i++)
        {
          if(goombax+20>blocklist[i].xpos&&goombax-20<blocklist[i].xpos+50&&abs(goombay-10-blocklist[i].ypos)<goombasize*.2)
          {
             goombay=blocklist[i].ypos;
             goombayspeed=0;
             goombayacc=0;
          }
        }
        for(i=0;i<itemboxs;i++)
        {
          if(goombax+20>itemboxlist[i].xpos&&goombax-20<itemboxlist[i].xpos+50&&abs(goombay-10-itemboxlist[i].ypos)<goombasize*.2)
          {
             goombay=itemboxlist[i].ypos;
             goombayspeed=0;
             goombayacc=0;
          }
        }
        for(i=0;i<koopas;i++)
        {
          if(abs(goombax-koopalist[i].koopax)<30&&goombay+70-koopalist[i].koopay>0&&goombay-30-koopalist[i].koopay<0&&koopalist[i].dead==2)
          {
            dead=1;
          }
          if(abs(goombax-koopalist[i].koopax)<30&&goombay+70-koopalist[i].koopay>0&&goombay-100-koopalist[i].koopay<0&&(koopalist[i].dead==0||koopalist[i].dead==1))
          {
            if(goombax<koopalist[i].koopax)
            {
              goombaspeed=-abs(goombaspeed);
            }
            else
            {
              goombaspeed=abs(goombaspeed);
            }
          }
        }
        if(goombaxcounter>goombaxmax||goombaxcounter<goombaxmin)
        {
          if(goombaxcounter>goombaxmax)
          {
            goombaspeed=-abs(goombaspeed);
          }
          else
          {
            goombaspeed=abs(goombaspeed);
          }
        }
      }
      fill(255,255,255);
      stroke(139,69,19);
      ellipse(goombax,goombay-goombasize*.25,goombasize*.5,goombasize*.3);
      fill(139,69,19);
      ellipse(goombax-goombasize*.25,goombay-goombasize*.15,goombasize*.4,goombasize*.3);
      ellipse(goombax+goombasize*.25,goombay-goombasize*.15,goombasize*.4,goombasize*.3);
      ellipse(goombax,goombay-goombasize*.9,goombasize*.5,goombasize*.5);
      ellipse(goombax-goombasize*.25,goombay-goombasize*.6,goombasize*.5,goombasize*.5);
      ellipse(goombax+goombasize*.25,goombay-goombasize*.6,goombasize*.5,goombasize*.5);
      quad(goombax-goombasize*.5,goombay-goombasize*.7,goombax-goombasize*.15,goombay-goombasize*1.1,goombax,goombay-goombasize*1.1,goombax-goombasize*0,goombay-goombasize*.7);
      quad(goombax+goombasize*.5,goombay-goombasize*.7,goombax+goombasize*.15,goombay-goombasize*1.1,goombax,goombay-goombasize*1.1,goombax+goombasize*0,goombay-goombasize*.7);
      quad(goombax-goombasize*.25,goombay-goombasize*.35,goombax-goombasize*.25,goombay-goombasize*.55,goombax+goombasize*.25,goombay-goombasize*.55,goombax+goombasize*.25,goombay-goombasize*.35);
      stroke(0,0,0);
      strokeWeight(3);
      line(goombax-goombasize*.25,goombay-goombasize*.45,goombax+goombasize*.25,goombay-goombasize*.45);
      fill(255,255,255);
      strokeWeight(1);
      triangle(goombax-goombasize*.35,goombay-goombasize*.45,goombax-goombasize*.15,goombay-goombasize*.45,goombax-goombasize*.25,goombay-goombasize*.58);
      triangle(goombax+goombasize*.35,goombay-goombasize*.45,goombax+goombasize*.15,goombay-goombasize*.45,goombax+goombasize*.25,goombay-goombasize*.58);
      ellipse(goombax-goombasize*.13,goombay-goombasize*.73,goombasize*.2,goombasize*.3);
      ellipse(goombax+goombasize*.13,goombay-goombasize*.73,goombasize*.2,goombasize*.3);
      fill(0,0,0);
      ellipse(goombax-goombasize*.09,goombay-goombasize*.73,goombasize*.08,goombasize*.08);
      ellipse(goombax+goombasize*.09,goombay-goombasize*.73,goombasize*.08,goombasize*.08);
      strokeWeight(3);
      line(goombax,goombay-goombasize*.8,goombax-goombasize*.25,goombay-goombasize*1.0);
      line(goombax,goombay-goombasize*.8,goombax+goombasize*.25,goombay-goombasize*1.0);
      if(mariodead>0)
      {
        if(abs(marioy+mariosize*.38-goombay+goombasize*1.8)<mariosize*.1&&goombax+goombasize*.9-mariox>0&&mariox+goombasize*.9-goombax>0)
        {
          marioyspeed=mariojumpspeed;
          dead=1;
        }
        else if(abs(goombax-mariox)<goombasize*.9&&marioy+mariosize*.38-goombay+goombasize*1.8>0&&goombay-marioy+mariosize*1.1-goombasize*.7>0&&overallcounter>marioimmunecounter)
        {
          mariodead=mariodead-1;
          if(mariodead==1)
          {
            mariosize=mariosize*.8;
            mariorecentlysmall=1;
          }
          if(mariodead<=0)
          {
            goombaspeed=0;
          }
        }
      }
      else
      {
        goombayacc=0;
        goombayspeed=0;
        goombaspeed=0;
      }  
    }
    else
    {
      goombax=-10000;
      goombay=-10000;
    }
  }
}

class koopa
{
  float koopaxmin;
  float koopaxmax;
  float koopax;
  float koopay;
  float koopasize;
  float koopaspeed;
  float koopaxcounter;
  float bounced;
  float yend;
  float xstart;
  float xend;
  float a;
  int i;
  int dead;
  float j;
  float koopayspeed;
  float koopayacc;
  float kill;
  int koopatype;
  int koopanumber;
  koopa(float q, float b, float c, float d, float e, float f, int g, int h)
  {
    koopaxmin=q;
    koopaxmax=b;
    koopax=c;
    koopay=d;
    koopasize=e;
    koopaspeed=f;
    bounced=0;
    koopaxcounter=koopax;
    koopayspeed=0;
    koopayacc=0;
    koopatype=g;
    koopanumber=h;
    dead=0;
  }
  void update()
  {
    if(mariodead>0)
    {
      koopayacc=univgravity;   
      if(dead==3)
      {
        koopax=-10000;
        koopay=-10000;
      }
      if(koopatype==2&&dead==0)
      {
        koopayacc=0;
      }
      for(i=0;i<goombas;i++)
      {
        if(abs(koopax-goombalist[i].goombax)<koopasize&&koopay+koopasize-goombalist[i].goombay>0&&koopay-koopasize-goombalist[i].goombay<0&&dead==0)
        {
          if(koopax<goombalist[i].goombax)
          {
            koopaspeed=-abs(koopaspeed);
          }
          if(koopax>goombalist[i].goombax)
          {
            koopaspeed=abs(koopaspeed);
          }
        }
      }
      if(kill==1)
      {
        koopax=-10000;
        koopay=-10000;
      }
      for(i=0;i<koopas;i++)
      {
        if(abs(koopax-koopalist[i].koopax)<koopasize&&koopay+koopasize*.33-koopalist[i].koopay>0&&koopay-koopasize-koopalist[i].koopay<0&&dead==0&&koopalist[i].dead!=0)
        {
          if(koopanumber!=i)
          {
            if(koopalist[i].dead==1)
            {
              if(koopax<koopalist[i].koopax)
              {
                koopaspeed=-abs(koopaspeed);
              }
              if(koopax>koopalist[i].koopax)
              {
                koopaspeed=abs(koopaspeed);
              }
            }
            else
            {
              koopax=-10000;
              koopay=-10000;
            }
          }
        }
        if(abs(koopax-koopalist[i].koopax)<70&&koopay+30-koopalist[i].koopay>0&&koopay-30-koopalist[i].koopay<0&&dead!=0&&koopalist[i].dead!=0)
        {
          if(koopanumber!=i)
          {
            kill=1;
          }
        }
        if(abs(koopax-koopalist[i].koopax)<koopasize&&koopay+koopasize-koopalist[i].koopay>0&&koopay-koopasize-koopalist[i].koopay<0&&dead==0)
        {
          if(koopanumber!=i)
          {
            if(koopax<koopalist[i].koopax)
            {
              koopaspeed=-abs(koopaspeed);
            }
            if(koopax>koopalist[i].koopax)
            {
              koopaspeed=abs(koopaspeed);
            }
          }
        }
      }
      for(i=0;i<platforms;i++)
      {
        if(koopax+10>platformlist[i].xstart&&koopax-10<platformlist[i].xend&&abs(koopay-10-platformlist[i].yend)<koopasize*.2)
        {
          if(abs(koopax-30-platformlist[i].xstart)<20&&dead==0&&koopatype==1)
          {
            koopaspeed=abs(koopaspeed);
          }
          if(abs(platformlist[i].xend-koopax-30)<20&&dead==0&&koopatype==1)
          {
            koopaspeed=-abs(koopaspeed);
          }
          if(koopatype==2&&dead==0)
          {}
          else
          {
            koopayacc=0;
            koopayspeed=0;
            koopay=platformlist[i].yend;
          }
          j=i;
        }
      }
      for(i=0;i<platforms;i++)
      {
        if(i!=j)
        { 
          if(dead==2)
          {
            if(abs(koopax-platformlist[i].xstart)<koopasize*.2&&koopay-koopasize*.14<platformlist[i].ystart&&koopay+koopasize*.14>platformlist[i].yend)
            {
              koopaspeed=-abs(koopaspeed);
            }
            if(abs(koopax-platformlist[i].xend)<koopasize*.2&&koopay-koopasize*.14<platformlist[i].ystart&&koopay+koopasize*.14>platformlist[i].yend)
            {
              koopaspeed=abs(koopaspeed);
            }
          }
          if(dead==0)
          {
           if(abs(koopax+30-platformlist[i].xstart)<koopasize*.2&&koopay-koopasize*1.2<platformlist[i].ystart&&koopay+koopasize*.14>platformlist[i].yend)
            {
              koopaspeed=-abs(koopaspeed);
            }
            if(abs(koopax-30-platformlist[i].xend)<koopasize*.2&&koopay-koopasize*1.2<platformlist[i].ystart&&koopay+koopasize*.14>platformlist[i].yend)
            {
              koopaspeed=abs(koopaspeed);
            }
          }
        }
      }
      for(i=0;i<blocks;i++)
      {
        if(koopax+10>blocklist[i].xpos&&koopax-10<blocklist[i].xpos+50&&abs(koopay-10-blocklist[i].ypos)<koopasize*.2)
        {
          if(abs(koopax-30-blocklist[i].xpos)<20&&dead==0&&koopatype==1)
          {
            koopaspeed=abs(koopaspeed);
          }
          if(abs(blocklist[i].xpos+50-koopax-30)<20&&dead==0&&koopatype==1)
          {
            koopaspeed=-abs(koopaspeed);
          }
          if(koopatype==2&&dead==0)
          {}
          else
          {
            koopayacc=0;
            koopayspeed=0;
            koopay=blocklist[i].ypos;
          }
          j=i;
        }
      }
      for(i=0;i<blocks;i++)
      {
        if(i!=j)
        { 
          if(dead==2)
          {
            if(abs(koopax+30-blocklist[i].xpos)<koopasize*.2&&koopay-koopasize*.14<blocklist[i].ypos+50&&koopay+koopasize*.14>blocklist[i].ypos)
            {
              koopaspeed=-abs(koopaspeed);
            }
            if(abs(koopax-30-blocklist[i].xpos-50)<koopasize*.2&&koopay-koopasize*.14<blocklist[i].ypos+50&&koopay+koopasize*.14>blocklist[i].ypos)
            {
              koopaspeed=abs(koopaspeed);
            }
          }
          if(dead==0)
          {
           if(abs(koopax+30-blocklist[i].xpos)<koopasize*.2&&koopay-koopasize*1.2<blocklist[i].ypos+50&&koopay+koopasize*.14>blocklist[i].ypos)
            {
              koopaspeed=-abs(koopaspeed);
            }
            if(abs(koopax-30-blocklist[i].xpos+50)<koopasize*.2&&koopay-koopasize*1.2<blocklist[i].ypos+50&&koopay+koopasize*.14>blocklist[i].ypos)
            {
              koopaspeed=abs(koopaspeed);
            }
          }
        }
      }
      for(i=0;i<itemboxs;i++)
      {
        if(koopax+10>itemboxlist[i].xpos&&koopax-10<itemboxlist[i].xpos+50&&abs(koopay-10-itemboxlist[i].ypos)<koopasize*.2)
        {
          if(abs(koopax-30-itemboxlist[i].xpos)<20&&dead==0&&koopatype==1)
          {
            koopaspeed=abs(koopaspeed);
          }
          if(abs(itemboxlist[i].xpos+50-koopax-30)<20&&dead==0&&koopatype==1)
          {
            koopaspeed=-abs(koopaspeed);
          }
          if(koopatype==2&&dead==0)
          {}
          else
          {
            koopayacc=0;
            koopayspeed=0;
            koopay=itemboxlist[i].ypos;
          }
          j=i;
        }
      }
      for(i=0;i<itemboxs;i++)
      {
        if(i!=j)
        { 
          if(dead==2)
          {
            if(abs(koopax+30-itemboxlist[i].xpos)<koopasize*.2&&koopay-koopasize*.14<itemboxlist[i].ypos+50&&koopay+koopasize*.14>itemboxlist[i].ypos)
            {
              koopaspeed=-abs(koopaspeed);
            }
            if(abs(koopax-30-itemboxlist[i].xpos-50)<koopasize*.2&&koopay-koopasize*.14<itemboxlist[i].ypos+50&&koopay+koopasize*.14>itemboxlist[i].ypos)
            {
              koopaspeed=abs(koopaspeed);
            }
          }
          if(dead==0)
          {
           if(abs(koopax+30-itemboxlist[i].xpos)<koopasize*.2&&koopay-koopasize*1.2<itemboxlist[i].ypos+50&&koopay+koopasize*.14>itemboxlist[i].ypos)
            {
              koopaspeed=-abs(koopaspeed);
            }
            if(abs(koopax-30-itemboxlist[i].xpos+50)<koopasize*.2&&koopay-koopasize*1.2<itemboxlist[i].ypos+50&&koopay+koopasize*.14>itemboxlist[i].ypos)
            {
              koopaspeed=abs(koopaspeed);
            }
          }
        }
      }
      if((koopaxcounter>koopaxmax||koopaxcounter<koopaxmin)&&koopatype!=0)
      {
        if(dead==0)
        {
          if(koopaxcounter>koopaxmax)
          {
            koopaspeed=-abs(koopaspeed);
          }
          else
          {
            koopaspeed=abs(koopaspeed);
          }
        }
      }
      if(koopaspeed==0)
      {}
      else
      {
        a=-koopaspeed/abs(koopaspeed);
      }  
    }
    else
    {
      koopaspeed=0;
      koopayacc=0;
      koopayspeed=0;
    }
    if(dead==0)
    {
      koopax=koopax+xscreenspeed+koopaspeed;
      koopaxcounter=koopaxcounter+koopaspeed;
      koopayspeed=koopayspeed+koopayacc;
      koopay=koopay+yscreenspeed+koopayspeed;
      strokeWeight(1);
      stroke(0,0,0);
      fill(255,255,0);
      arc(koopax+a*.015*koopasize,koopay-1.39*koopasize,.42*koopasize,.47*koopasize,PI,2*PI);
      quad(koopax+a*.2*koopasize,koopay-.35*koopasize,koopax+a*.029*koopasize,koopay-.35*koopasize,koopax-a*.057*koopasize,koopay-.071*koopasize,koopax+a*.114*koopasize,koopay-.071*koopasize);
      quad(koopax+a*.2*koopasize,koopay-.35*koopasize,koopax+a*.371*koopasize,koopay-.35*koopasize,koopax+a*.457*koopasize,koopay-.071*koopasize,koopax+a*.289*koopasize,koopay-.071*koopasize);
      if(koopatype==0)
      {
        fill(0,255,0);
      }
      if(koopatype==1)
      {
        fill(255,0,0);
      }
      if(koopatype==3)
      {
        fill(0,0,255);
      }
      if(koopatype==2)
      {
        stroke(0);
        fill(255,255,255);
        stroke(50,50,50);
        beginShape();
        curveVertex(koopax+a*koopasize*.4,koopay-koopasize*1);
        curveVertex(koopax+a*koopasize*.4,koopay-koopasize*1);
        curveVertex(koopax+a*koopasize*.7,koopay-koopasize*1.24);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*1.4);
        curveVertex(koopax+a*koopasize*.68,koopay-koopasize*1.46);
        curveVertex(koopax+a*koopasize*.68,koopay-koopasize*1.46);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.38);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.38);
        curveVertex(koopax+a*koopasize*.68,koopay-koopasize*1.54);
        curveVertex(koopax+a*koopasize*.68,koopay-koopasize*1.58);
        curveVertex(koopax+a*koopasize*.64,koopay-koopasize*1.62);
        curveVertex(koopax+a*koopasize*.6,koopay-koopasize*1.62);
        curveVertex(koopax+a*koopasize*.58,koopay-koopasize*1.6);
        curveVertex(koopax+a*koopasize*.5,koopay-koopasize*1.38);
        curveVertex(koopax+a*koopasize*.3,koopay-koopasize*1.04);
        curveVertex(koopax+a*koopasize*.3,koopay-koopasize*.8);
        curveVertex(koopax+a*koopasize*.3,koopay-koopasize*.8);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.84,koopay-koopasize*.94);
        curveVertex(koopax+a*koopasize*.84,koopay-koopasize*.94);
        curveVertex(koopax+a*koopasize*.8,koopay-koopasize*.88);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*.84);
        curveVertex(koopax+a*koopasize*.56,koopay-koopasize*.8);
        curveVertex(koopax+a*koopasize*.5,koopay-koopasize*.8);
        curveVertex(koopax+a*koopasize*.4,koopay-koopasize*.94);
        curveVertex(koopax+a*koopasize*.4,koopay-koopasize*.94);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.4,koopay-koopasize*.86);
        curveVertex(koopax+a*koopasize*.4,koopay-koopasize*.86);
        curveVertex(koopax+a*koopasize*.5,koopay-koopasize*1.2);
        curveVertex(koopax+a*koopasize*.8,koopay-koopasize*1.36);
        curveVertex(koopax+a*koopasize*1.1,koopay-koopasize*1.6);
        curveVertex(koopax+a*koopasize*1.1,koopay-koopasize*1.48);
        curveVertex(koopax+a*koopasize*1,koopay-koopasize*1.36);
        curveVertex(koopax+a*koopasize*1,koopay-koopasize*1.36);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*1,koopay-koopasize*1.36);
        curveVertex(koopax+a*koopasize*1,koopay-koopasize*1.36);
        curveVertex(koopax+a*koopasize*.96,koopay-koopasize*1.36);
        curveVertex(koopax+a*koopasize*.86,koopay-koopasize*1.28);
        curveVertex(koopax+a*koopasize*.8,koopay-koopasize*1.24);
        curveVertex(koopax+a*koopasize*.64,koopay-koopasize*1.16);
        curveVertex(koopax+a*koopasize*.6,koopay-koopasize*1.12);
        curveVertex(koopax+a*koopasize*.56,koopay-koopasize*1.06);
        curveVertex(koopax+a*koopasize*.54,koopay-koopasize*.98);
        curveVertex(koopax+a*koopasize*.54,koopay-koopasize*.94);
        curveVertex(koopax+a*koopasize*.58,koopay-koopasize*.88);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*.88);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.92);
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.92);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*.94);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*.96);
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.96);
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.96);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*.94);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*.94);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1);
        curveVertex(koopax+a*koopasize*1.02,koopay-koopasize*1.04);
        curveVertex(koopax+a*koopasize*1.04,koopay-koopasize*1.06);
        curveVertex(koopax+a*koopasize*1.08,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*1.08,koopay-koopasize*1.16);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.1);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*1.06,koopay-koopasize*1.18);
        curveVertex(koopax+a*koopasize*1.12,koopay-koopasize*1.24);
        curveVertex(koopax+a*koopasize*1.14,koopay-koopasize*1.32);
        curveVertex(koopax+a*koopasize*1.12,koopay-koopasize*1.34);
        curveVertex(koopax+a*koopasize*.96,koopay-koopasize*1.22);
        curveVertex(koopax+a*koopasize*.96,koopay-koopasize*1.22);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.96,koopay-koopasize*1.22);
        curveVertex(koopax+a*koopasize*.96,koopay-koopasize*1.22);
        curveVertex(koopax+a*koopasize*1.12,koopay-koopasize*1.34);
        curveVertex(koopax+a*koopasize*1.18,koopay-koopasize*1.42);
        curveVertex(koopax+a*koopasize*1.2,koopay-koopasize*1.48);
        curveVertex(koopax+a*koopasize*1.2,koopay-koopasize*1.52);
        curveVertex(koopax+a*koopasize*1.16,koopay-koopasize*1.52);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.36);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.36);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.92);
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.92);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*.94);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*.96);
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.98);
        curveVertex(koopax+a*koopasize*.72,koopay-koopasize*.98);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*.96);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*.96);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*.98);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*.98);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.02);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*1.04);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*1.04);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.02);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.02);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.06);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.06);
        curveVertex(koopax+a*koopasize*.78,koopay-koopasize*1.08);
        curveVertex(koopax+a*koopasize*.78,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.12);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.12);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.08);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.08);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.12);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.12);
        curveVertex(koopax+a*koopasize*.78,koopay-koopasize*1.14);
        curveVertex(koopax+a*koopasize*.78,koopay-koopasize*1.16);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.18);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.18);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.14);
        curveVertex(koopax+a*koopasize*.66,koopay-koopasize*1.14);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*1.02,koopay-koopasize*1.38);
        curveVertex(koopax+a*koopasize*1.02,koopay-koopasize*1.38);
        curveVertex(koopax+a*koopasize*1.02,koopay-koopasize*1.32);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.2);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.12);
        curveVertex(koopax+a*koopasize*.76,koopay-koopasize*1.12);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.2);
        curveVertex(koopax+a*koopasize*.94,koopay-koopasize*1.2);
        curveVertex(koopax+a*koopasize*1,koopay-koopasize*1.18);
        curveVertex(koopax+a*koopasize*1,koopay-koopasize*1.18);
        curveVertex(koopax+a*koopasize*.92,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*1.04);
        curveVertex(koopax+a*koopasize*.74,koopay-koopasize*1.04);
        endShape();
        beginShape();
        curveVertex(koopax+a*koopasize*.92,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*.92,koopay-koopasize*1.1);
        curveVertex(koopax+a*koopasize*.96,koopay-koopasize*1.06);
        curveVertex(koopax+a*koopasize*.86,koopay-koopasize*.96);
        curveVertex(koopax+a*koopasize*.86,koopay-koopasize*.96);
        endShape();
        fill(0,0,255);
      }
      ellipse(koopax-a*.014*koopasize,koopay-.071*koopasize,koopasize*.4,koopasize*.2);
      ellipse(koopax+a*.3*koopasize,koopay-.071*koopasize,koopasize*.4,koopasize*.2);
      if(a==1)
      {
        arc(koopax+a*.2*koopasize,koopay-.643*koopasize,koopasize*.6,koopasize*.8,4,7.15);
        fill(238,220,130);
        arc(koopax+a*.2*koopasize,koopay-.643*koopasize,koopasize*.6,koopasize*.8,.85,4);
      }
      else
      {
        arc(koopax+a*.2*koopasize,koopay-.643*koopasize,koopasize*.6,koopasize*.8,2.3,5.45);
        fill(238,220,130);
        arc(koopax+a*.2*koopasize,koopay-.643*koopasize,koopasize*.6,koopasize*.8,-.85,2.3);
      }
      strokeWeight(2);
      line(koopax+a*.314*koopasize,koopay-.471*koopasize,koopax+a*.043*koopasize,koopay-.329*koopasize);
      line(koopax+a*.186*koopasize,koopay-.671*koopasize,koopax-a*.071*koopasize,koopay-.529*koopasize);
      fill(255,255,0);
      stroke(255,255,0);
      strokeWeight(8);
      line(koopax+a*.057*koopasize,koopay-.714*koopasize,koopax-a*.286*koopasize,koopay-.571*koopasize);
      stroke(0,0,0);
      strokeWeight(1);
      quad(koopax-a*.143*koopasize,koopay-1.296*koopasize,koopax-a*.114*koopasize,koopay-1.286*koopasize,koopax-a*.029*koopasize,koopay-1.143*koopasize,koopax-a*0*koopasize,koopay-1.143*koopasize);
      ellipse(koopax-a*.086*koopasize, koopay-1.214*koopasize,koopasize*.8,koopasize*.5);
      stroke(255,255,0);
      ellipse(koopax+a*.029*koopasize,koopay-1.429*koopasize,koopasize*.35,koopasize*.35);
      quad(koopax-a*.157*koopasize,koopay-1.143*koopasize,koopax-a*.457*koopasize,koopay-1.143*koopasize,koopax-a*.371*koopasize,koopay-.971*koopasize,koopax-a*.086*koopasize,koopay-1.029*koopasize);
      stroke(0,0,0);
      fill(255,255,255);
      ellipse(koopax-a*.014*koopasize,koopay-1.429*koopasize,koopasize*.2,koopasize*.25);
      fill(0,0,0);
      ellipse(koopax-a*.043*koopasize,koopay-1.429*koopasize,koopasize*.1,koopasize*.1);
      strokeWeight(2);
      line(koopax-a*.371*koopasize,koopay-.971*koopasize,koopax-a*.129*koopasize,koopay-1.071*koopasize);
      line(koopax-a*9/70*koopasize,koopay-1.171*koopasize,koopax-a*.129*koopasize,koopay-1.071*koopasize);
      line(koopax-a*1/10*koopasize,koopay-1.029*koopasize,koopax-a*.129*koopasize,koopay-1.071*koopasize);
      line(koopax+a*8/35*koopasize,koopay-.857*koopasize,koopax+a*.371*koopasize,koopay-.643*koopasize);
      line(koopax+a*8/35*koopasize,koopay-.857*koopasize,koopax+a*.071*koopasize,koopay-.857*koopasize);
      line(koopax+a*8/35*koopasize,koopay-.857*koopasize,koopax+a*.289*koopasize,koopay-1.029*koopasize);
      line(koopax+a*.371*koopasize,koopay-.643*koopasize,koopax+a*.5*koopasize,koopay-.643*koopasize);
      line(koopax+a*.371*koopasize,koopay-.643*koopasize,koopax+a*.3*koopasize,koopay-.456*koopasize);
      line(koopax+a*.4*koopasize,koopay-.343*koopasize,koopax-a*0*koopasize,koopay-.957*koopasize);
      line(koopax-a*.286*koopasize,koopay-1.257*koopasize,koopax-a*.357*koopasize,koopay-1.214*koopasize);
      if(mariodead>0)
      {
        if(abs(marioy+mariosize*.38-koopay+koopasize*2.23)<mariosize*.1&&koopax+koopasize*.9-mariox>0&&mariox+koopasize*.9-koopax>0)
        {
          marioyspeed=mariojumpspeed;
          if(koopatype!=2)
          {
            dead=1;
            koopaspeed=0;
          }
          else
          {
            koopatype=3;
          }
        }
        else if(abs(koopax-mariox)<koopasize*.9&&marioy+mariosize*.38-koopay+koopasize*2.23>0&&koopay-marioy+mariosize*1.1-koopasize*.5>0&&overallcounter>marioimmunecounter)
        {
          mariodead=mariodead-1;
          if(mariodead==1)
          {
            mariosize=mariosize*.8;
            mariorecentlysmall=1;
          }
          if(mariodead<=0)
          {
            koopaspeed=0;
          }
        }
      }
    }
    if(dead==1||dead==2)
    {
      koopax=koopax+xscreenspeed+koopaspeed;
      koopayspeed=koopayspeed+koopayacc;
      koopay=koopay+yscreenspeed+koopayspeed;
      stroke(0,0,0);
      strokeWeight(1);
      fill(238,220,130);
      arc(koopax,koopay-koopasize*.25,koopasize*.7,koopasize*.5,0,PI);
      fill(0,0,0);
      ellipse(koopax-.17*koopasize,koopay-.15*koopasize,.15*koopasize,.15*koopasize);
      ellipse(koopax+.17*koopasize,koopay-.15*koopasize,.15*koopasize,.15*koopasize);
      line(koopax+.14*koopasize,koopay-.02*koopasize,koopax+.14*koopasize,koopay-.15*koopasize);
      line(koopax-.14*koopasize,koopay-.02*koopasize,koopax-.14*koopasize,koopay-.15*koopasize);
      line(koopax+.0*koopasize,koopay-.0*koopasize,koopax+.0*koopasize,koopay-.15*koopasize);
      if(koopatype==0)
      {
        fill(0,255,0);
      }
      if(koopatype==1)
      {
        fill(255,0,0);
      }
      if(koopatype==2||koopatype==3)
      {
        fill(0,0,255);
      }
      arc(koopax,koopay-koopasize*.22,koopasize*.85,koopasize*.7,1.1*PI,1.9*PI);
      fill(255,255,255);
      rect(koopax-koopasize*.4,koopay-koopasize*.31,koopasize*.8,koopasize*.1);
      arc(koopax,koopay-koopasize*.22,koopasize*.8,koopasize*.2,0,PI);
      if(koopatype==0)
      {
        fill(0,255,0);
      }
      if(koopatype==1)
      {
        fill(255,0,0);
      }
      if(koopatype==2||koopatype==3)
      {
        fill(0,0,255);
      }
      arc(koopax,koopay-koopasize*.32,koopasize*.8,koopasize*.2,0,PI);
      strokeWeight(2);
      line(koopax-.12*koopasize,koopay-.37*koopasize,koopax+.12*koopasize,koopay-.37*koopasize);
      line(koopax-.12*koopasize,koopay-.37*koopasize,koopax-.23*koopasize,koopay-.25*koopasize);
      line(koopax+.12*koopasize,koopay-.37*koopasize,koopax+.23*koopasize,koopay-.25*koopasize);
      line(koopax+.12*koopasize,koopay-.37*koopasize,koopax+.23*koopasize,koopay-.5*koopasize);
      line(koopax-.12*koopasize,koopay-.37*koopasize,koopax-.23*koopasize,koopay-.5*koopasize);
      if(mariodead>0)
      {
        if(dead==2)
        {
          koopaspeed=-shellspeed*a; 
        }
        else
        {
          koopaspeed=0;
        }
        if(direction==0)
        {
          if(dead==2)
          {
            if(abs(marioy+mariosize*.38-koopay+koopasize*1.2)<mariosize*.2&&koopax+koopasize*.9-mariox>0&&mariox+koopasize*.9-koopax>0)
            {
              marioyspeed=mariojumpspeed;
              dead=1;
              koopaspeed=0;
            }
          }
          else if(dead==1)
          {
            if(abs(marioy+mariosize*.38-koopay+koopasize*1.2)<mariosize*.2&&koopax+koopasize*.9-mariox>0&&mariox+koopasize*.9-koopax>0)
            {
              marioyspeed=mariojumpspeed;
              dead=2;
            }
          }
        }
        if(abs(koopax+10-mariox)<koopasize*.6&&marioy+mariosize*.38-koopay+koopasize*1.23>0&&koopay-marioy+mariosize*1.1-koopasize*.5>0&&dead==1)
        {
          koopaspeed=-shellspeed;
          dead=2;
        }
        if(abs(koopax-10-mariox)<koopasize*.6&&marioy+mariosize*.38-koopay+koopasize*1.23>0&&koopay-marioy+mariosize*1.1-koopasize*.5>0&&dead==1)
        {
          koopaspeed=shellspeed;
          dead=2;
        }
        if(abs(koopax-mariox)<koopasize*.6&&marioy+mariosize*.38-koopay+koopasize*1.2>0&&koopay-marioy+mariosize*1.1-koopasize*.5>0&&dead==2&&overallcounter>marioimmunecounter)
        {
          mariodead=mariodead-1;
          if(mariodead==1)
          {
            mariosize=mariosize*.8;
            mariorecentlysmall=1;
          }
          if(mariodead<=0)
          {
            shellspeed=0;
          }
        }
      }
    }
  }
}

class flower
{
  float flowerx;
  float flowery;
  float flowersize;
  float flowertype;
  float flowerspeed;
  float bulletspeed;
  float flowerfacing;
  float actiontimer;
  float locationtimer;
  float flowerangle;
  float s;
  int flowernumber;
  int dead;
  flower(float d, float e, float f, float g, float h, float i, int j)
  {
    flowerx = d;
    flowery = e;
    flowersize = f;
    flowertype = g;
    flowerspeed = h;
    locationtimer=100;
    actiontimer=100;
    bulletspeed = i;
    flowerfacing = 0;
    flowernumber=j;
    dead=0;
  }
  void update()
  {
    if(dead==1)
    {
      flowerx=-10000;
      flowery=-10000;
    }
    else
    {
    flowerx=flowerx+xscreenspeed;
    flowery=flowery+yscreenspeed;
    actiontimer=actiontimer+flowerspeed;
    locationtimer=locationtimer+flowerspeed;
    if(locationtimer>1400)
    {
      locationtimer=0;
    }
    if(locationtimer<100)
    {
      flowery-=flowersize*1.9*flowerspeed;
    }
    else if(locationtimer>=100 && locationtimer<700)//donothing
    {}
    else if(locationtimer>=700 && locationtimer<900)
    {
      flowery+=flowersize*1.9*flowerspeed;
    }
    else if(locationtimer>=900 && locationtimer<1300)//donothing
    {}
    else
    {
      flowery-=flowersize*1.9*flowerspeed;
    }
    if(flowery-250*flowersize-368>=0)
    {
      flowerfacing = acos((flowerx-675)/sqrt(sq(675-flowerx)+sq(flowery-250*flowersize-368)))-1.57;
    }
    else
    {
      flowerfacing = 4.71 -acos((flowerx-675)/sqrt(sq(675-flowerx)+sq(flowery-250*flowersize-368)));
      if (flowerfacing>2.27 && flowerfacing<3.14)
      {
        flowerfacing = 2.27;
      }
      else if (flowerfacing>= 3.14 && flowerfacing<4.01)
      {
        flowerfacing = 4.01;
      }
    }
    if (flowertype ==0)
    {
      if (actiontimer>200)
      {
        actiontimer=0;
      }
      if (actiontimer<100)
      {
        s= .9*actiontimer/100;
      }
      else
      {
        s= .9*(200-actiontimer)/100;
      }
    }
    else if(flowertype == 1)
    {
      if(actiontimer>1400)
      {
        actiontimer=0;
      }
      if(actiontimer<100)
      {
        s = .25+.7*(100-actiontimer)/100;
      }
      else if (actiontimer>=100 && actiontimer<700)
      {
        s=.25;
      }
      else if (actiontimer>700 && actiontimer<=800)
      {
        s= .25+.7*(actiontimer-700)/100;
      }
      else if (actiontimer>800)
      {
        s=.95;
      }
    }
    if(abs(flowerx-mariox)<(flowersize*140+.3*marioturn/100*mariosize)&&abs(marioy+mariosize*.36-(flowery-flowersize*165))<flowersize*330&&overallcounter>marioimmunecounter)
    {
      mariodead=mariodead-1;
      if(mariodead==1)
      {
        mariosize=mariosize*.8;
        mariorecentlysmall=1;
      }
    }
    stroke(45,219,20);
    strokeWeight(15*flowersize);
    line(flowerx,flowery-200*flowersize,flowerx,flowery);
    strokeWeight(0);
    fill(45,219,20);
    //leaves
    arc(flowerx-50*flowersize,flowery-40*flowersize,100*flowersize,40*flowersize, -3, 0);
    arc(flowerx+50*flowersize,flowery-40*flowersize,100*flowersize,40*flowersize, -3, 0);
    arc(flowerx-50*flowersize,flowery-110*flowersize,100*flowersize,40*flowersize, -3, 0);
    arc(flowerx+50*flowersize,flowery-110*flowersize,100*flowersize,40*flowersize, -3, 0);
    fill(255,13,41);
    stroke(255,13,41);
    if(flowertype == 0)
    {
      arc(flowerx,flowery-250*flowersize,160*flowersize,160*flowersize, -0.4 - s, 3.5+s);
      //dots
      fill(255,255,255);
      for (int i=0; i<12;i++)
      {
         ellipse(flowerx + (((i*7)%16)* 2.65 + 20)* cos(-0.4 + 4.2*i/12)*flowersize, flowery-250*flowersize + flowersize*(((i*7)%16)* 2.65 + 20) * sin(-0.4 + 4.1*i/12), 20*flowersize, 20*flowersize);
      }
      //left lipteeth
      pushMatrix();
      translate(flowerx,flowery-250*flowersize);
      rotate(s-0.2);
      stroke(255,255,255);
      strokeWeight(25*flowersize);
      line(0,5*flowersize,-70*flowersize,-55*flowersize);
      strokeWeight(0);
      fill(255,255,255);
      triangle(-15*flowersize, -12*flowersize, -29*flowersize, -23*flowersize, -10*flowersize, -40*flowersize);
      triangle(-29*flowersize, -24*flowersize, -43*flowersize, -35*flowersize, -24*flowersize, -52*flowersize);
      triangle(-43*flowersize, -36*flowersize, -57*flowersize, -47*flowersize, -38*flowersize, -64*flowersize);
      popMatrix();
      //right lipteeth
      pushMatrix();
      translate(flowerx,flowery-250*flowersize);
      rotate(-s+0.2);
      stroke(255,255,255);
      strokeWeight(25*flowersize);
      line(0,5*flowersize,70*flowersize,-55*flowersize);
      strokeWeight(0);
      fill(255,255,255);
      triangle(15*flowersize, -12*flowersize, 29*flowersize, -23*flowersize, 10*flowersize, -40*flowersize);
      triangle(29*flowersize, -24*flowersize, 43*flowersize, -35*flowersize, 24*flowersize, -52*flowersize);
      triangle(43*flowersize, -36*flowersize, 57*flowersize, -47*flowersize, 38*flowersize, -64*flowersize);
      popMatrix();
      //end of teeth
    }
    //venusfiretrap
    if (flowertype == 1)
    {
      if (actiontimer == 150)
      { 
        fireballs=fireballs+1;
        if(fireballs>20)
        {
          fireballlist[fireballs%20]= new fireball(flowerx,flowery-220*flowersize,2,bulletspeed*cos(1.57-flowerfacing),-bulletspeed*sin(1.57-flowerfacing),1,fireballs-1);
        }
        else
        {
          fireballlist= (fireball[])expand(fireballlist,fireballs);
          fireballlist[fireballs-1]= new fireball(flowerx,flowery-220*flowersize,2,bulletspeed*cos(1.57-flowerfacing),-bulletspeed*sin(1.57-flowerfacing),1,fireballs-1);
        }
      }
      else if(actiontimer == 350)
      { 
        fireballs=fireballs+1;
        if(fireballs>20)
        {
          fireballlist[fireballs%20]= new fireball(flowerx,flowery-220*flowersize,2,bulletspeed*cos(1.57-flowerfacing),-bulletspeed*sin(1.57-flowerfacing),1,fireballs-1);
        }
        else
        {
          fireballlist= (fireball[])expand(fireballlist,fireballs);
          fireballlist[fireballs-1]= new fireball(flowerx,flowery-220*flowersize,2,bulletspeed*cos(1.57-flowerfacing),-bulletspeed*sin(1.57-flowerfacing),1,fireballs-1);
        }
      }
      else if(actiontimer == 550)
      { 
        fireballs=fireballs+1;
        if(fireballs>20)
        {
          fireballlist[fireballs%20]= new fireball(flowerx,flowery-220*flowersize,2,bulletspeed*cos(1.57-flowerfacing),-bulletspeed*sin(1.57-flowerfacing),1,fireballs-1);
        }
        else
        {
          fireballlist= (fireball[])expand(fireballlist,fireballs);
          fireballlist[fireballs-1]= new fireball(flowerx,flowery-220*flowersize,2,bulletspeed*cos(1.57-flowerfacing),-bulletspeed*sin(1.57-flowerfacing),1,fireballs-1);
        }
      }
      pushMatrix();
      translate(flowerx,flowery-220*flowersize);
      rotate(flowerfacing);
      arc(0,-30*flowersize,160*flowersize,160*flowersize, -0.4 - s, 3.5+s);
      //dots
      fill(255,255,255);
      for (int i=0; i<12;i++)
      {
        ellipse((((i*7)%16)* 2.65 + 20)* cos(-0.4 + 4.2*i/12)*flowersize, -30*flowersize + flowersize*(((i*7)%16)* 2.65 + 20) * sin(-0.4 + 4.1*i/12), 20*flowersize, 20*flowersize);
      }
      //left lipteeth
      translate(0,-30*flowersize);
      rotate(s-0.2);
      stroke(255,255,255);
      strokeWeight(25*flowersize);
      line(0,5*flowersize,-70*flowersize,-55*flowersize);
      strokeWeight(0);
      fill(255,255,255);
      triangle(-15*flowersize, -12*flowersize, -29*flowersize, -23*flowersize, -10*flowersize, -40*flowersize);
      triangle(-29*flowersize, -24*flowersize, -43*flowersize, -35*flowersize, -24*flowersize, -52*flowersize);
      triangle(-43*flowersize, -36*flowersize, -57*flowersize, -47*flowersize, -38*flowersize, -64*flowersize);
      //right lipteeth
      rotate(-2*s+0.4);
      stroke(255,255,255);
      strokeWeight(25*flowersize);
      line(0,5*flowersize,70*flowersize,-55*flowersize);
      strokeWeight(0);
      fill(255,255,255);
      triangle(15*flowersize, -12*flowersize, 29*flowersize, -23*flowersize, 10*flowersize, -40*flowersize);
      triangle(29*flowersize, -24*flowersize, 43*flowersize, -35*flowersize, 24*flowersize, -52*flowersize);
      triangle(43*flowersize, -36*flowersize, 57*flowersize, -47*flowersize, 38*flowersize, -64*flowersize);
      popMatrix();
      //end of teeth
    }
    }
  }
}

class special
{
  float specialx;
  float specialy;
  float specialspeed;
  float specialsize;
  int specialtype;
  int specialnumber;
  int counter;
  int specialspawn;
  int i;
  float specialyspeed;
  float specialyacc;
  int movecancel=1;
  int j;
  int dead=0;
  special(float a, float b, float c, float d,int e, int f,int g)
  {
    specialx=a;
    specialy=b;
    specialspeed=c;
    specialsize=d;
    specialspawn=e;
    specialtype=f;
    specialnumber=g;
  }
  void update()
  {
    if(specialtype==1)
    {
      specialspeed=0;
    }
    movecancel=1;
    if(mariodead>0)
    {
      counter=counter+1;
      if(dead==0)
      {
        if(counter<=130&&specialspawn==1)
        {
          specialyacc=0;
          specialyspeed=-.423;
          movecancel=0;
        }
        if(counter>130)
        {
          if(specialtype==2&&specialspawn==1)
          {
            coins=coins+1;
            dead=1;
          }
          specialyacc=univgravity;
        }
          for(i=0;i<platforms;i++)
          {
            if(specialx+20>platformlist[i].xstart&&specialx-20<platformlist[i].xend&&abs(specialy-10-platformlist[i].yend)<specialsize*.2)
            {
              if(counter>130)
              {
               specialy=platformlist[i].yend;
               specialyspeed=0;
               specialyacc=0;
               j=i;
              }
            }
          }
          for(i=0;i<platforms;i++)
          {
            if(i!=j)
            {
              if(abs(specialx+10-platformlist[i].xstart)<5&&specialy-50<platformlist[i].ystart&&specialy>platformlist[i].yend)
              {
                specialspeed=-abs(specialspeed);
              }
              if(abs(specialx-20-platformlist[i].xend)<5&&specialy-50<platformlist[i].ystart&&specialy>platformlist[i].yend)
              {
                specialspeed=abs(specialspeed);
              }
            }
          }
          for(i=0;i<blocks;i++)
          {
            if(specialx+20>blocklist[i].xpos&&specialx-20<blocklist[i].xpos+50&&abs(specialy-10-blocklist[i].ypos)<specialsize*.2)
            {
              if(counter>130)
              {
               specialy=blocklist[i].ypos;
               specialyspeed=0;
               specialyacc=0;
               j=i;
              }
            }
          }
          for(i=0;i<blocks;i++)
          {
            if(i!=j)
            {
              if(abs(specialx+10-blocklist[i].xpos)<5&&specialy<=blocklist[i].ypos+50&&specialy>=blocklist[i].ypos)
              {
                specialspeed=-abs(specialspeed);
              }
              if(abs(specialx-10-blocklist[i].xpos-50)<5&&specialy<blocklist[i].ypos+50&&specialy>blocklist[i].ypos)
              {
                specialspeed=abs(specialspeed);
              }
            }
          }
          for(i=0;i<itemboxs;i++)
          {
            if(specialx+20>itemboxlist[i].xpos&&specialx-20<itemboxlist[i].xpos+50&&abs(specialy-10-itemboxlist[i].ypos)<10)
            {
              if(counter>130)
              {
               specialy=itemboxlist[i].ypos;
               specialyspeed=0;
               specialyacc=0;
               j=i;
              }
            }
          }
          for(i=0;i<itemboxs;i++)
          {
            if(i!=j)
            {
              if(abs(specialx+10-itemboxlist[i].xpos)<5&&specialy<itemboxlist[i].ypos+50&&specialy>itemboxlist[i].ypos)
              {
                specialspeed=-abs(specialspeed);
              }
              if(abs(specialx-20-itemboxlist[i].xpos+50)<5&&specialy<itemboxlist[i].ypos+50&&specialy>itemboxlist[i].ypos)
              {
                specialspeed=abs(specialspeed);
              }
            }
          }
          if(abs(specialx-mariox)<specialsize*.9&&marioy+mariosize*.38-specialy+specialsize*1.8>0&&specialy-marioy+mariosize*1.1-specialsize*.7>0)
          {
            dead=1;
            if(specialtype==0&&mariodead==1)
            {
              mariosize=mariosize*1.25;
              mariodead=mariodead+1;
            }
            if(specialtype==1)
            {
              mariofirehat=1;
            }
            if(specialtype==2)
            {
              coins=coins+1;
            }
          }
        
      }
      else
      {
        specialx=-10000;
        specialy=-10000;
      }
      }
      else
      {
        specialspeed=0;
        specialyacc=0;
        specialyspeed=0;
      }
      specialx=specialx+xscreenspeed+specialspeed*movecancel;
      specialyspeed=specialyspeed+specialyacc;
      specialy=specialy+yscreenspeed+specialyspeed;
      if(specialtype==0)
      {
        noStroke();
        fill(255,0,0);
        arc(specialx,specialy-.205*specialsize,.524*specialsize,.571*specialsize,PI,PI*2);
        arc(specialx,specialy-.21*specialsize,.524*specialsize,.305*specialsize,0,PI);
        fill(238,221,130);
        arc(specialx,specialy-.095*specialsize,.286*specialsize,.143*specialsize,PI,2*PI);
        quad(specialx-.067*specialsize,specialy,specialx+.067*specialsize,specialy,specialx+.067*specialsize,specialy-.045*specialsize,specialx-.067*specialsize,specialy-.045*specialsize);
        ellipse(specialx-.067*specialsize,specialy-.076*specialsize,.152*specialsize,.152*specialsize);
        ellipse(specialx+.067*specialsize,specialy-.076*specialsize,.152*specialsize,.152*specialsize);
        quad(specialx-.143*specialsize,specialy-.048*specialsize,specialx+.143*specialsize,specialy-.048*specialsize,specialx+.143*specialsize,specialy-.095*specialsize,specialx-.143*specialsize,specialy-.095*specialsize);
        fill(255,255,255);
        ellipse(specialx,specialy-.352*specialsize,.257*specialsize,.257*specialsize);
        arc(specialx-.25*specialsize,specialy-.305*specialsize,.095*specialsize,.19*specialsize,-1.0,2.0);
        arc(specialx+.25*specialsize,specialy-.305*specialsize,.095*specialsize,.19*specialsize,PI-2,PI+1);
        fill(0,0,0);
        ellipse(specialx+.048*specialsize,specialy-.095*specialsize,.029*specialsize,.095*specialsize);
        ellipse(specialx-.048*specialsize,specialy-.095*specialsize,.029*specialsize,.095*specialsize);
      }
      if(specialtype==1)
      {
        noStroke();
        fill(0,255,0);
        quad(specialx-.048*specialsize,specialy,specialx+.048*specialsize,specialy,specialx+.048*specialsize,specialy-.19*specialsize,specialx-.048*specialsize,specialy-.19*specialsize);
        arc(specialx-.143*specialsize,specialy-.076*specialsize,.286*specialsize,.143*specialsize,4,7);
        arc(specialx+.143*specialsize,specialy-.076*specialsize,.286*specialsize,.143*specialsize,PI-7,PI-4);
        fill(255,69,0);
        ellipse(specialx,specialy-.333*specialsize,.476*specialsize,.343*specialsize);
        fill(255,255,0);
        ellipse(specialx,specialy-.333*specialsize,.343*specialsize,.248*specialsize);
        fill(255,255,255);
        ellipse(specialx,specialy-.333*specialsize,.21*specialsize,.151*specialsize);
        fill(0,0,0);
        ellipse(specialx-.048*specialsize,specialy-.333*specialsize,.029*specialsize,.095*specialsize);
        ellipse(specialx+.048*specialsize,specialy-.333*specialsize,.029*specialsize,.095*specialsize); 
      }
      if(specialtype==2)
      {
        noStroke();
        fill(255,215,0);
        ellipse(specialx,specialy-.248*specialsize,.381*specialsize,.495*specialsize);
        strokeWeight(1);
        stroke(0,0,0);
        fill(50,50,50);
        quad(specialx-.029*specialsize,specialy-.095*specialsize,specialx+.029*specialsize,specialy-.095*specialsize,specialx+.029*specialsize,specialy-.4*specialsize,specialx-.029*specialsize,specialy-.4*specialsize);
      } 
  }
}  

class fireball
{
  float firex;
  float firey;
  float firesize;
  float firexspeed;
  float fireyspeed;
  float fireyacc;
  int firetype;
  int firenumber;
  int i;
  int j=-1;
  int counter=0;
  fireball(float a, float b, float c, float d, float e, int f, int g)
  {
    firex=a;
    firey=b;
    firesize=c;
    firexspeed=d;
    fireyspeed=e;
    firetype=f;
    firenumber=g;
  }
  void update()
  {
    counter=counter+1;
    if(counter<100)
    {
      if(firetype==0)
      {
        fireyacc=univgravity*1.5;
      }
      if(mariodead<=0)
      {
        fireyspeed=0;
        firexspeed=0;
      }
      firex=firex+xscreenspeed+firexspeed;
      fireyspeed=fireyspeed+fireyacc;
      firey=firey+yscreenspeed+fireyspeed;
      fill(255,102,0);
      stroke(3);
      stroke(255,0,0);
      ellipse(firex, firey, 15*(1-(counter/200)),15*(1-(counter/200)));
      if(firetype==0)
      { 
        for(i=0;i<platforms;i++)
        {
          if(firex>platformlist[i].xstart&&firex<platformlist[i].xend&&abs(firey-platformlist[i].yend)<10)
          {
            fireyspeed=-5.3;
            j=i;
          }
        }
        for(i=0;i<platforms;i++)
        {
          if(abs(firex+10-platformlist[i].xstart)<5&&firey-7.5<platformlist[i].ystart&&firey+7.5>platformlist[i].yend)
          {
            firexspeed=-abs(firexspeed);
          }
          if(abs(firex-10-platformlist[i].xend)<5&&firey-7.5<platformlist[i].ystart&&firey+7.5>platformlist[i].yend)
          {
            firexspeed=abs(firexspeed);
          }
        }
        for(i=0;i<flowers;i++)
        {
          if(abs(flowerlist[i].flowerx-firex)<40&&abs(flowerlist[i].flowery-50-firey)<40)
          {
            flowerlist[i].dead=1;
            counter=2000;
          }
        }
        for(i=0;i<blocks;i++)
        {
          if(firex>blocklist[i].xpos&&firex<blocklist[i].xpos+50&&abs(firey-blocklist[i].ypos)<10)
          {
            fireyspeed=-5.3;
            j=i;
          }
        }
        for(i=0;i<blocks;i++)
        {
          if(abs(firex+10-blocklist[i].xpos)<5&&firey-7.5<blocklist[i].ypos+50&&firey+7.5>blocklist[i].ypos)
          {
            firexspeed=-abs(firexspeed);
          }
          if(abs(firex-10-blocklist[i].xpos-50)<5&&firey-7.5<blocklist[i].ypos+50&&firey+7.5>blocklist[i].ypos)
          {
            firexspeed=abs(firexspeed);
          }
        }
        for(i=0;i<itemboxs;i++)
        {
          if(firex>itemboxlist[i].xpos&&firex<itemboxlist[i].xpos+50&&abs(firey-itemboxlist[i].ypos)<10)
          {
            fireyspeed=-5.3;
            j=i;
          }
        }
        for(i=0;i<itemboxs;i++)
        {
          if(abs(firex+10-itemboxlist[i].xpos)<5&&firey-7.5<itemboxlist[i].ypos+50&&firey+7.5>itemboxlist[i].ypos)
          {
            firexspeed=-abs(firexspeed);
          }
          if(abs(firex-10-itemboxlist[i].xpos-50)<5&&firey-7.5<itemboxlist[i].ypos+50&&firey+7.5>itemboxlist[i].ypos)
          {
            firexspeed=abs(firexspeed);
          }
        }
        for(i=0;i<koopas;i++)
        {
          if(abs(firex-koopalist[i].koopax)<30&&firey<koopalist[i].koopay&&firey+100>koopalist[i].koopay&&koopalist[i].dead!=3)
          {
            koopalist[i].dead=3;
            counter=2000;
          }
        }
        for(i=0;i<goombas;i++)
        {
          if(abs(firex-goombalist[i].goombax)<30&&firey<goombalist[i].goombay&&firey+60>goombalist[i].goombay)
          {
            goombalist[i].dead=1;
            counter=2000;
          }
        }
      }
      else
      {
        if(abs(firex-mariox)<30&&abs(firey-(marioy+mariosize*.36))<60)
        {
          counter=2000;
          mariodead=mariodead-1;
          if(mariodead==1)
          {
            mariosize=mariosize*.8;
            mariorecentlysmall=1;
          }
        }  
      }
    }
  }
}

class number
{
  float numberx;
  float numbery;
  int digit;
  number(float a, float b, int c)
  {
    numberx=a;
    numbery=b;
    digit=c;
  }
  void update()
  {
    if(digit==0)
    {
      line(numberx,numbery,numberx+20,numbery);
      line(numberx+20,numbery,numberx+20,numbery+40);
      line(numberx+20,numbery+40,numberx,numbery+40);
      line(numberx,numbery+40,numberx,numbery);
    }
    if(digit==1)
    {
      line(numberx+15,numbery+40,numberx+15,numbery);
      line(numberx+15,numbery,numberx+5,numbery+10);
    }
    if(digit==2)
    {
      line(numberx,numbery,numberx+20,numbery);
      line(numberx+20,numbery,numberx+20,numbery+20);
      line(numberx+20,numbery+20,numberx,numbery+20);
      line(numberx,numbery+20,numberx,numbery+40);
      line(numberx,numbery+40,numberx+20,numbery+40);
    }
    if(digit==3)
    {
      line(numberx+20,numbery+40,numberx+20,numbery);
      line(numberx+20,numbery,numberx,numbery);
      line(numberx+20,numbery+20,numberx,numbery+20);
      line(numberx+20,numbery+40,numberx,numbery+40);
    }
    if(digit==4)
    {
      line(numberx,numbery,numberx,numbery+20);
      line(numberx,numbery+20,numberx+20,numbery+20);
      line(numberx+20,numbery,numberx+20,numbery+40);
    }
    if(digit==5)
    {
      line(numberx,numbery,numberx+20,numbery);
      line(numberx,numbery,numberx,numbery+20);
      line(numberx,numbery+20,numberx+20,numbery+20);
      line(numberx+20,numbery+20,numberx+20,numbery+40);
      line(numberx+20,numbery+40,numberx,numbery+40);
    }
    if(digit==6)
    {
      line(numberx,numbery,numberx+20,numbery);
      line(numberx,numbery,numberx,numbery+40);
      line(numberx,numbery+20,numberx+20,numbery+20);
      line(numberx,numbery+40,numberx+20,numbery+40);
      line(numberx+20,numbery+40,numberx+20,numbery+20);
    }
    if(digit==7)
    {
      line(numberx+10,numbery+40,numberx+20,numbery);
      line(numberx+20,numbery,numberx,numbery);
    }
    if(digit==8)
    {
      line(numberx,numbery,numberx+20,numbery);
      line(numberx,numbery,numberx,numbery+40);
      line(numberx+20,numbery,numberx+20,numbery+40);
      line(numberx,numbery+40,numberx+20,numbery+40);
      line(numberx,numbery+20,numberx+20,numbery+20);
    }
    if(digit==9)
    {
      line(numberx,numbery,numberx+20,numbery);
      line(numberx,numbery,numberx,numbery+20);
      line(numberx+20,numbery,numberx+20,numbery+40);
      line(numberx,numbery+20,numberx+20,numbery+20);
      line(numberx+20,numbery+40,numberx,numbery+40);
    }
  }
}
    

void scores()
{
  float timetenths;
  float timeones;
  float timetens;
  float timeminutes;
  int coinones;
  int cointens;
  noStroke();
  fill(255,215,0);
  ellipse(50,50-23.56,36.195,47);
  strokeWeight(1);
  stroke(0,0,0);
  fill(50,50,50);
  quad(50-2.755,50-9.025,50+2.755,50-9.025,50+2.755,50-38,50-2.755,50-38);
  strokeWeight(3);
  line(70,10,100,40);
  line(70,40,100,10);
  coinones=coins%10;
  cointens=((coins%100)-coinones)/10;
  numberlist[0]=new number(110,5,cointens);
  numberlist[1]=new number(140,5,coinones);
  timetenths=(overallcounter%48)/4.8;
  timeones=((overallcounter%480)-timetenths)/48;
  timetens=((overallcounter%2880)-timeones-timetenths)/480;
  timeminutes=((overallcounter%28800)-timetens-timeones-timetenths)/2880;
  numberlist[2]=new number(1180,5,int(timeminutes));
  ellipse(1210,15,3,3);
  ellipse(1210,35,3,3);
  numberlist[3]=new number(1220,5,int(timetens));
  numberlist[4]=new number(1250,5,int(timeones));
  ellipse(1280,45,3,3);
  numberlist[5]=new number(1290,5,int(timetenths));
  
}
    
void drawmario()
{
  if(mariottt>200)
  {
    mariottt=0;
  }
  else if(mariottt<100)
  {
    marioturn=mariottt;
  }
  else if (mariottt>=100)
  {
    marioturn=200-mariottt;
  }
  //onearm
  if(mariofirehat==0)
  {
     stroke(255,0,0);}
     else
     {
       stroke(255);
     }
     strokeWeight(10*mariosize/70);
     line(mariox+mariosize*mariodirection*(.12-.1*marioturn/100),marioy+mariosize*.31,mariox+mariosize*mariodirection*(.15-.1*marioturn/100),marioy+mariosize*.31);
     strokeWeight(8*mariosize/70);
     line(mariox+mariosize*mariodirection*(.18-.1*marioturn/100),marioy+mariosize*.3,mariox+mariosize*mariodirection*(.26-.21*marioturn/100),marioy+mariosize*(.5-.02*marioturn/100));
     line(mariox+mariosize*mariodirection*(.26-.19*marioturn/100),marioy+mariosize*(.5-.02*marioturn/100),mariox+mariosize*mariodirection*(.35-.13*marioturn/100),marioy+mariosize*(.63-.05*marioturn/100));
     strokeWeight(.5*mariosize/70);
     stroke(180);
     fill(255);
     ellipse(mariox+mariosize*mariodirection*(.35-.15*marioturn/100),marioy+mariosize*(.62-.06*marioturn/100),mariosize*.2,mariosize*.16);
     //body
     strokeWeight(1);
     if(mariofirehat==0)
     {
       stroke(255,0,0);
       fill(255,0,0);
     }
     else
     {
       stroke(255);
       fill(255);
     }
     ellipse(mariox,marioy+mariosize*.48,mariosize*(.4-.07*marioturn/100),mariosize*.45);
     if(mariofirehat==1)
     {
       stroke(255,0,0);
       fill(255,0,0);
     }
     else
     {   
       stroke(0,50,155);
       fill(0,50,155);
     }
     quad(mariox+mariosize*mariodirection*(.2-.03*marioturn/100),marioy+mariosize*.48,mariox-mariosize*mariodirection*(.2-.03*marioturn/100),marioy+mariosize*.48,mariox-mariosize*mariodirection*(.1-.03*marioturn/100),marioy+mariosize*.38,mariox+mariosize*mariodirection*(.1+.08*marioturn/100),marioy+mariosize*.38);
     arc(mariox,marioy+mariosize*.48,mariosize*(.42-.06*marioturn/100),mariosize*.55,0,PI);
     //legs
     strokeWeight(13.5*mariosize/70);
     if(mariottt<50)
     {
       curve(mariox-mariosize*mariodirection*.23,marioy+mariosize*.4,mariox-mariosize*mariodirection*.12,marioy+mariosize*.66,mariox-mariosize*mariodirection*.23,marioy+mariosize*.96,mariox-mariosize*mariodirection*.3,marioy+mariosize*.9);
       curve(mariox+mariosize*mariodirection*.12,marioy+mariosize*.8,mariox+mariosize*mariodirection*(.12-.03*marioturn/100),marioy+mariosize*.66,mariox+mariosize*mariodirection*(.2-.07*marioturn/100),marioy+mariosize*.9,mariox+mariosize*mariodirection*(.12-.03*marioturn/100),marioy+mariosize*.9); 
       //feet
       stroke(160,100,60);
       strokeWeight(1*mariosize/70);
       fill(160,100,60);
       arc(mariox-mariosize*mariodirection*.18,marioy+mariosize*1.08,mariosize*.35,mariosize*.3,-PI,0);
       arc(mariox+mariosize*mariodirection*(.25-.07*marioturn/100),marioy+mariosize*1.08,mariosize*.35,mariosize*.3,-PI,0);
       strokeWeight(7*mariosize/70);
       if(mariofirehat==1)
       {
         stroke(255,0,0);
       }
       else
       { 
         stroke(0,50,155);
       }
       line(mariox+mariosize*mariodirection*(.28-.07*marioturn/100),marioy+mariosize*.93,mariox+mariosize*mariodirection*(.15-.07*marioturn/100),marioy+mariosize*.93);
       line(mariox-mariosize*mariodirection*.26,marioy+mariosize*.93,mariox-mariosize*mariodirection*.14,marioy+mariosize*.93);
     }
     else if(mariottt>=50&&mariottt<100)
     {    
       curve(mariox-mariosize*mariodirection*.16,marioy+mariosize*.4,mariox-mariosize*mariodirection*.09,marioy+mariosize*.66,mariox-mariosize*mariodirection*.16,marioy+mariosize*.82,mariox-mariosize*mariodirection*.3,marioy+mariosize*.9);
       curve(mariox+mariosize*mariodirection*(.12-.063*marioturn/100),marioy+mariosize*.8,mariox+mariosize*mariodirection*(.09-.03*marioturn/100),marioy+mariosize*.66,mariox+mariosize*mariodirection*(.13-.07*marioturn/100),marioy+mariosize*.9,mariox+mariosize*mariodirection*(.09-.03*marioturn/100),marioy+mariosize*.9); 
       //feet
       fill(160,100,60);
       stroke(160,100,60);
       strokeWeight(1*mariosize/70);
       arc(mariox+mariosize*mariodirection*(.18-.07*marioturn/100),marioy+mariosize*1.08,mariosize*.35,mariosize*.3,-PI,0);
       strokeWeight(7*mariosize/70);
       if(mariofirehat==1){stroke(255,0,0);}
       else
       { 
         stroke(0,50,155);
       }
       line(mariox+mariosize*mariodirection*(.21-.07*marioturn/100),marioy+mariosize*.93,mariox+mariosize*mariodirection*(.08-.07*marioturn/100),marioy+mariosize*.93);
       stroke(160,100,60);
       strokeWeight(1*mariosize/70);
       arc(mariox-mariosize*mariodirection*.12,marioy+mariosize*.94,mariosize*.35,mariosize*.3,-PI+PI/8*mariodirection,PI/8*mariodirection);
       strokeWeight(7*mariosize/70);
       if(mariofirehat==1)
       {
         stroke(255,0,0);
       }
       else
       { 
         stroke(0,50,155);
       }
       line(mariox-mariosize*mariodirection*.2,marioy+mariosize*.79,mariox-mariosize*mariodirection*.08,marioy+mariosize*.79);
      }
      else if(mariottt>=100&&mariottt<150)
      {
        curve(mariox-mariosize*mariodirection*(.09+.07*marioturn/100),marioy+mariosize*.4,mariox-mariosize*mariodirection*(.06+.03*marioturn/100),marioy+mariosize*.66,mariox-mariosize*mariodirection*(.09+.07*marioturn/100),marioy+mariosize*.96,mariox-mariosize*mariodirection*(.1+.1*marioturn/100),marioy+mariosize*.9);
        curve(mariox+mariosize*mariodirection*.057,marioy+mariosize*.8,mariox+mariosize*mariodirection*.06,marioy+mariosize*.66,mariox+mariosize*mariodirection*.06,marioy+mariosize*.9,mariox+mariosize*mariodirection*.06,marioy+mariosize*.9);
        //feet
        fill(160,100,60);
        stroke(160,100,60);
        strokeWeight(mariosize/70*1);
        arc(mariox+mariosize*mariodirection*.1,marioy+mariosize*1.08,mariosize*.35,mariosize*.3,-PI,0);
        strokeWeight(mariosize/70*7);
        if(mariofirehat==1)
        {
          stroke(255,0,0);
        }
        else
        { 
          stroke(0,50,155);
        }
        line(mariox+mariosize*mariodirection*.14,marioy+mariosize*.93,mariox+mariosize*mariodirection*.01,marioy+mariosize*.93);
        stroke(160,100,60);
        strokeWeight(mariosize/70*1);
        arc(mariox-mariosize*mariodirection*(.04+.07*marioturn/100),marioy+mariosize*1.08,mariosize*.35,mariosize*.3,-PI,0);
        strokeWeight(mariosize/70*7);
        if(mariofirehat==1)
        {
          stroke(255,0,0);
        }
        else
        {
          stroke(0,50,155);
        }
        line(mariox-mariosize*mariodirection*(.12+.07*marioturn/100),marioy+mariosize*.93,mariox-mariosize*mariodirection*(.07*marioturn/100),marioy+mariosize*.93);
      }
      else
      {
        curve(mariox-mariosize*mariodirection*(.16+.07*marioturn/100),marioy+mariosize*.4,mariox-mariosize*mariodirection*(.09+.03*marioturn/100),marioy+mariosize*.66,mariox-mariosize*mariodirection*(.16+.07*marioturn/100),marioy+mariosize*.96,mariox-mariosize*mariodirection*(.2+.1*marioturn/100),marioy+mariosize*.9);
        curve(mariox+mariosize*mariodirection*.055,marioy+mariosize*.88,mariox+mariosize*mariodirection*.09,marioy+mariosize*.66,mariox+mariosize*mariodirection*.13,marioy+mariosize*.86,mariox+mariosize*mariodirection*.08,marioy+mariosize*.9); 
        //feet
        fill(160,100,60);
        stroke(160,100,60);
        strokeWeight(1*mariosize/70);
        arc(mariox+mariosize*mariodirection*.25,marioy+mariosize,mariosize*.35,mariosize*.3,-(PI+PI/8*mariodirection),-PI/8*mariodirection);
        strokeWeight(7*mariosize/70);
        if(mariofirehat==1)
        {
          stroke(255,0,0);
        }
       else
       { 
         stroke(0,50,155);
       }
       line(mariox+mariosize*mariodirection*.23,marioy+mariosize*.84,mariox+mariosize*mariodirection*.1,marioy+mariosize*.92);
       strokeWeight(1*mariosize/70);
       stroke(160,100,60);
       arc(mariox-mariosize*mariodirection*(.11+.07*marioturn/100),marioy+mariosize*1.08,mariosize*.35,mariosize*.3,-PI,0);
       strokeWeight(7*mariosize/70);
       if(mariofirehat==1)
       {
         stroke(255,0,0);
       }
       else
       { 
         stroke(0,50,155);
       }
       line(mariox-mariosize*mariodirection*(.19+.07*marioturn/100),marioy+mariosize*.93,mariox-mariosize*mariodirection*(.07+.07*marioturn/100),marioy+mariosize*.93);
     }  
   //otherarm
   if(mariofirehat==0)
   {
     stroke(255,0,0);
   }
   else
   {
     stroke(255);
   }
   strokeWeight(10*mariosize/70);
   line(mariox-mariosize*mariodirection*.12,marioy+mariosize*.31,mariox-mariosize*mariodirection*.15,marioy+mariosize*.31);
   strokeWeight(8*mariosize/70);
   line(mariox-mariosize*mariodirection*.18,marioy+mariosize*.31,mariox-mariosize*mariodirection*(.26-.06*marioturn/100),marioy+mariosize*(.5-.02*marioturn/100));
   line(mariox-mariosize*mariodirection*(.26-.06*marioturn/100),marioy+mariosize*(.5-.02*marioturn/100),mariox-mariosize*mariodirection*(.32-.24*marioturn/100),marioy+mariosize*(.63-.05*marioturn/100));
   strokeWeight(.5*mariosize/70);
   stroke(180);
   fill(255);
   ellipse(mariox-mariosize*mariodirection*(.35-.32*marioturn/100),marioy+mariosize*(.62-.06*marioturn/100),mariosize*.2,mariosize*.16);
   //strap
   if(mariofirehat==1)
   {
     stroke(255,0,0);
   }
   else
   { 
     stroke(0,50,155);
   }
   strokeWeight(5*mariosize/70);
   line(mariox-mariosize*mariodirection*(.11-.14*marioturn/100),marioy+mariosize*.4,mariox-mariosize*mariodirection*(.11-.14*marioturn/100),marioy+mariosize*.27);
   if(marioturn<50)
   {
     strokeWeight(5*mariosize/70*(100-marioturn)/100);
   }
   else
   {
     strokeWeight(0);
   }
   line(mariox+mariosize*mariodirection*(.11+.05*marioturn/100),marioy+mariosize*.4,mariox+mariosize*mariodirection*(.11+.05*marioturn/100),marioy+mariosize*.27);
   //button
   fill(250,250,0);
   strokeWeight(0);
   ellipse(mariox-mariosize*mariodirection*(.11-.14*marioturn/100),marioy+mariosize*.42,mariosize*.06,mariosize*.06);
   ellipse(mariox+mariosize*mariodirection*(.11+.05*marioturn/100),marioy+mariosize*.42,mariosize*.06,mariosize*.06);
   //head
   stroke(255,200,200);
   strokeWeight(mariosize/70);
   fill(255,200,200);
   ellipse(mariox,marioy,mariosize*.5,mariosize*.5);
    //hair
   stroke(120,20,0);
   strokeWeight(7*mariosize*marioturn/100/66);
   line(mariox-mariosize*.21*mariodirection,marioy-mariosize*.18,mariox-mariosize*.22*mariodirection,marioy+mariosize*.10);
   strokeWeight(7*mariosize/70);
   line(mariox-mariosize*mariodirection*(.21-.05*marioturn/100),marioy-mariosize*.18,mariox-mariosize*mariodirection*(.22-.05*marioturn/100),marioy+mariosize*.12);
   line(mariox-mariosize*mariodirection*(.12-.05*marioturn/100),marioy-mariosize*.18,mariox-mariosize*mariodirection*(.10-.07*marioturn/100),marioy-mariosize*.05);
   strokeWeight(2*mariosize/70);
   arc(mariox+mariosize*mariodirection*(.08+.07*marioturn/100),marioy-mariosize*.085, mariosize*.12,mariosize*.12, -5*PI/6, -PI/6);
   arc(mariox+mariosize*mariodirection*.21,marioy-mariosize*.096, mariosize*.03*(1-marioturn/100),mariosize*.12, -2*PI/3-mariodirection*PI/6, -PI/3-mariodirection*PI/6);
   //mustache
   strokeWeight(5*mariosize/70);
   stroke(60,10,0);
   arc(mariox+mariosize*mariodirection*(.13+.07*marioturn/100),marioy+mariosize*.09, mariosize*.18,mariosize*.14, PI/6+mariodirection*PI/6, 5*PI/6+mariodirection*PI/6);
   //nose
   stroke(255,200,200);
   strokeWeight(1*mariosize/70);
   fill(255,200,200);
   ellipse(mariox+mariosize*mariodirection*(.20+.07*marioturn/100),marioy+mariosize*.07,mariosize*.2,mariosize*.12);
   stroke(255,150,150);
   strokeWeight(2*mariosize/70);
   arc(mariox+mariosize*mariodirection*(.20+.07*marioturn/100),marioy+mariosize*.074,mariosize*.2,mariosize*.12,.2,PI-.7);
   //hat
   strokeWeight(1*mariosize/70);
   if(mariofirehat==0)
   {
     stroke(255,0,0);
     fill(255,0,0);
   }
   else
   {   
     stroke(255);
     fill(255);
   }
   triangle(mariox+mariosize*mariodirection*.15*(1+marioturn/250),marioy-mariosize*.2,mariox+mariosize*mariodirection*.15*(1+marioturn/250),marioy-mariosize*.3,mariox+mariosize*mariodirection*.3*(1+marioturn/250),marioy-mariosize*.2);
   quad(mariox-mariosize*mariodirection*.32*(1-marioturn/800),marioy-mariosize*.05*(1+marioturn/200),mariox-mariosize*mariodirection*.4*(1-marioturn/800),marioy-mariosize*.25*(1+marioturn/500),mariox+mariosize*mariodirection*.14*(1+marioturn/250),marioy-mariosize*.5,mariox+mariosize*mariodirection*.2*(1+marioturn/250),marioy-mariosize*.2);
   fill(255,255,255);
   stroke(255,0,0);
   ellipse(mariox+mariosize*mariodirection*(.08+.07*marioturn/100),marioy-mariosize*.3,mariosize*.2*(1-marioturn/400),mariosize*.2);
   line(mariox+mariosize*mariodirection*(.03+.08*marioturn/100),marioy-mariosize*.25,mariox+mariosize*mariodirection*(.03+.08*marioturn/100),marioy-mariosize*.35);
   line(mariox+mariosize*mariodirection*(.13+.06*marioturn/100),marioy-mariosize*.25,mariox+mariosize*mariodirection*(.13+.06*marioturn/100),marioy-mariosize*.35);
   line(mariox+mariosize*mariodirection*(.08+.07*marioturn/100),marioy-mariosize*.25,mariox+mariosize*mariodirection*(.03+.08*marioturn/100),marioy-mariosize*.35);
   line(mariox+mariosize*mariodirection*(.08+.07*marioturn/100),marioy-mariosize*.25,mariox+mariosize*mariodirection*(.13+.06*marioturn/100),marioy-mariosize*.35);
   //ear
   stroke(255,200,200);
   fill(255,200,200);
   ellipse(mariox-mariosize*mariodirection*(.17-.05*marioturn/100),marioy-mariosize*.045,mariosize*.11,mariosize*.15);
   //eyes
   stroke(255);
   fill(255);
   ellipse(mariox+mariosize*mariodirection*(.07+.08*marioturn/100),marioy-mariosize*.045,mariosize*.07,mariosize*.14);
   stroke(60,170,255);
   fill(60,170,255);
   ellipse(mariox+mariosize*mariodirection*(.08+.08*marioturn/100),marioy-mariosize*.046,mariosize*.055,mariosize*.1);
   stroke(0);
   fill(0);  
   ellipse(mariox+mariosize*mariodirection*(.085+.08*marioturn/100),marioy-mariosize*.046,mariosize*.033,mariosize*.066);
   stroke(255);
   fill(255);
   ellipse(mariox+mariosize*mariodirection*(.085+.08*marioturn/100),marioy-mariosize*.0455,mariosize*.003,mariosize*.003);
   stroke(255);
   fill(255);
   ellipse(mariox+mariosize*mariodirection*(.2+.04*marioturn/100),marioy-mariosize*.063,mariosize*.036*(1-marioturn/100),mariosize*.14*(1-marioturn/250));
   stroke(60,170,255);
   fill(60,170,255);
   ellipse(mariox+mariosize*mariodirection*(.21+.04*marioturn/100),marioy-mariosize*.064,mariosize*.029*(1-marioturn/100),mariosize*.1*(1-marioturn/250));
   stroke(0);
   fill(0);  
   ellipse(mariox+mariosize*mariodirection*(.215+.04*marioturn/100),marioy-mariosize*.064,mariosize*.0175*(1-marioturn/100),mariosize*.066*(1-marioturn/250));
   stroke(255);
   fill(255);
   ellipse(mariox+mariosize*mariodirection*(.215+.04*marioturn/100),marioy-mariosize*.0635,mariosize*.0016*(1-marioturn/100),mariosize*.002*(1-marioturn/250));
}


 



void movemario()
{
   if(keyPressed==false)
  {
  }
  else
  {
    if(keyCode==LEFT)
    {
      mariodirection=-1;
      mariowalk=1;
    }
    if(keyCode==RIGHT)
    {
      mariodirection=1;
      mariowalk=-1;
    }
    if(keyCode==DOWN)
    {
      downpressed=1;
    }
    if(keyCode==UP)
    {
      if(ground==1)
      {
        marioyspeed=mariojumpspeed;
      }
    }
    if(keyCode==CONTROL)
    {
      if(fireballcounter>30)
      {
        if(fireballshot==0)
        {
          if(mariofirehat==1)
          {
            fireballs++;
            if(fireballs>20)
            {
              fireballlist[fireballs%20]= new fireball(mariox+mariodirection*mariosize*.2,marioy+mariosize*.45,2,7*mariodirection,-marioyspeed+2,0,fireballs-1);
            }
            else
            {
              fireballlist= (fireball[])expand(fireballlist,fireballs);
              fireballlist[fireballs-1]= new fireball(mariox+mariodirection*mariosize*.2,marioy+mariosize*.45,2,7*mariodirection,-marioyspeed+2,0,fireballs-1);
            }
            fireballshot=1;
            fireballcounter=0;
          }
        }
      }
    }
  }
  if(mariowalk==-1)
  {
    if(mariowalkright==1)
    {
      mariowalkcancel=1;
    }
  }
  if(mariowalk==1)
  {
    if(mariowalkleft==1)
    {
      mariowalkcancel=-1;
    }
  }
  xscreenspeed=(mariowalk+mariowalkcancel)*mariowalkspeed;
  mariottt=mariottt+abs(3*(mariowalk+mariowalkcancel)*mariowalkspeed);
  marioyspeed=marioyspeed-specgravity;
  yscreenspeed=marioyspeed+yerror;
}

void teleport()
{
  checkplatforms();
  if(situation == 40)
  {
    xscreenspeed = aa-cc;
    yscreenspeed = bb-dd + 100;
  }
  else if (situation == 60)
  {
    xscreenspeed = aa-cc;
    yscreenspeed = bb-dd + 50;
  }
  situation=0;
  direction();
  drawmario();
  ground=0;
  checkplatforms();
  updateblocks();
  updateitemboxs();
  updategoombas();
  updatekoopas();
  updateflowers();
  updatespecials();
  updatefireballs();
}

void situation()
{
  if(situation==0)
  {
     specgravity=univgravity;
     yerror=0;
     mariowalkspeed=5;
     mariottt=0;
  }
  if(situation==1)
  {
    marioyspeed=0;
    specgravity=0;
    ground=1;
  }
  if(situation==2)
  {
    situation=2;
    marioyspeed=0;
  }
  if(situation==3)
  {
    situation=3;
    marioyspeed=3;
    specgravity=0;
    mariowalkspeed=0;
  }
  if(situation==4)
  {
    situation = 40;
    teleport();
  }
  if(situation==5)
  {
    situation=5;
    marioyspeed=-3;
    specgravity=0;
    mariowalkspeed=0;
  }
  if(situation==6)
  {
    situation = 60;
    teleport();
  }
}

void direction()
{
  if(marioyspeed<=0)
  {
    direction=0;
  }
  else
  {
    direction=1;
  }
}

void keyReleased()
{
  if(keyCode==LEFT || keyCode==RIGHT)
  {
    mariowalk=0;
    if(situation==1)
    {
      if(mariottt<=100)
      {
        mariottt=100;
      }
      else
      {
      mariottt=0;
      }
    }
  }
  if(keyCode==CONTROL)
  {
    fireballshot=0;
  }
  else if(keyCode==DOWN)
  {
    downpressed=0;
  }
}

void checkplatforms()
{ 
  for(int i=0;i<platforms;i++)
  {
    platformlist[i].update();
  }
}

void updateblocks()
{ 
  for(int i=0;i<blocks;i++)
  {
    blocklist[i].update();
  }
}

void updategoombas()
{
  for(int i=0;i<goombas;i++)
  {
    goombalist[i].update();
  }
}

void updatekoopas()
{
  for(int i=0;i<koopas;i++)
  {
    koopalist[i].update();
  }
}

void updateflowers()
{
  for(int i=0;i<flowers;i++)
  {
    flowerlist[i].update();
  }
}

void updatespecials()
{
  for(int i=0;i<specials;i++)
  {
    speciallist[i].update();
  }
}

void updatefireballs()
{
  
  for(int i=0;i<fireballs&&i<20;i++)
  {
    fireballlist[i].update();
  }
}

void updatenumbers()
{
  for(int i=0;i<numbers;i++)
  {
    numberlist[i].update();
  }
}

void updateitemboxs()
{
  for(int i=0;i<itemboxs;i++)
  {
    itemboxlist[i].update();
  }
}

void marioimmune()
{
  if(mariorecentlysmall==1)
  {
    marioimmunecounter=overallcounter+100;
    mariodead=1;
    mariorecentlysmall=0;
  }
}
