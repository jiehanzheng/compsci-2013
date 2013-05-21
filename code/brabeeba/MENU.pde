//----------------------------------------
int p1AbsoluteBlood=1000;
int p1RecoverableBlood=1000;
int p2AbsoluteBlood=1000;
int p2RecoverableBlood=1000;
int p1MC=300;
int p2MC=300;
float TIME=100;
FightingSystem fightingSystem;
//------------------------------------------
Shiranui player1;
Shiranui player2;
MutablePositions player1Position;
MutablePositions player2Position;
PImage[] p1Image;
PImage[] p2Image;
//-------------------------------------------ImageList
PImage burstR;
PImage burstL;
PImage standL;
PImage standR;
PImage moveL;
PImage moveR;
PImage recoverL;
PImage recoverR;
PImage freezeL;
PImage freezeR;
PImage fireL;
PImage fireR;
PImage dirtL;
PImage dirtR;
//---------------------------------------------------
float opponentPositionX=400;
float opponentPositionY=350;
float positionX=200;
float positionY=350;
//-----------------------------------------
PFont myfont;
PImage musicMenuImage;
PImage menuJpg;
PImage backMenu;
Button[] csButton; 
boolean[] onButton;
boolean[] clickButton;
int[] color1;
String[] musicList;
String[] backgroundList;
PImage[] backGround;
PlayerInformation player1Information, player2Information, MBInformation;
int superLink=-1;
int initialMusic=0;
int initialBackground=0;
void setup() {
  //-----------------------------------
  fightingSystem=new FightingSystem();
  //------------------------------------
  noSmooth();
  p1Image= new PImage[14];
  p2Image= new PImage[14];
  frameRate(50);
  burstR=loadImage("2D52F285.png");
  burstL=loadImage("2D535C9F.png");
  standL=loadImage("1A12DF14.png");
  standR=loadImage("1AA473CA.png");
  moveL=loadImage("1A4B41AB.png");
  moveR=loadImage("1A7FFE95.png");
  recoverL=loadImage("1A39C5D0.png");
  recoverR=loadImage("1A8B2F36.png");
  freezeL=loadImage("1A6DC92F.png");
  freezeR=loadImage("1A9EACC2.png");
  fireL=loadImage("1A1B122A.png");
  fireR=loadImage("1A337B64.png");
  dirtL=loadImage("1ADA359CL.png"); 
  dirtR=loadImage("1ADA359C.png"); 
  player1Position = new MutablePositions(positionX, positionY);
  player2Position = new MutablePositions(opponentPositionX, opponentPositionY);
  //  player1=new CharacterCommonMove(true, 65, 83, 68, 87, player1Position, player2Position);
  //  player2=new CharacterCommonMove(false, LEFT, DOWN, RIGHT, UP, player2Position, player1Position);
  player1=new Shiranui(true, 65, 83, 68, 87, player1Position, player2Position,71,72,74);
  player2=new Shiranui(false, LEFT, DOWN, RIGHT, UP, player2Position, player1Position, 188, 190 ,191);
  //--------------------------------------------------

  //-----------------------------------------------------
  myfont=createFont("SimHei Regular", 30);
  musicList= new String[55];
  for (int i=0; i<55;i++) {
    musicList[i]="未来への咆哮";
  }
  //----------------------------------------------------
  backgroundList=new String[10];
  backGround=new PImage[10];
  for (int i=0; i<10; i++) {
    backgroundList[i]="Airport";
    backGround[i]=loadImage("s9.jpg");
  }
  backMenu=loadImage("horizon.jpg");
  //----------------------------------------------------
  size(800, 600);
  musicMenuImage=loadImage("musicMenu.jpg");
  menuJpg=loadImage("s9.jpg");
  image(menuJpg, 0, 0, 800, 600);
  csButton= new Button[35];
  onButton= new boolean[35];
  clickButton= new boolean[35];
  color1=new int[35];
  MBInformation= new PlayerInformation(-1, -1);//6-music, 0-background
  player1Information=new PlayerInformation(16, -1);
  player2Information=new PlayerInformation(18, -1);
  for (int i=0;i<7;i++) {
    for (int j=0;j<5;j++) {
      csButton[7*j+i]= new Button(120.0+i*80, 50.0+j*80, 80.0, 80.0, menuJpg);
      onButton[7*j+i]=false;
      clickButton[7*j+i]=false;
      color1[7*j+i]=0;
    }
  }
}
void draw() {
  image(menuJpg, 0, 0, 800, 600);
  if (superLink==-1) {
    if ( !(player2Information.y==-1)&& !(player1Information.y==-1)) {
      superLink=0;
    }
    if (player1Information.x<0) {
      player1Information.x=player1Information.x+35;
    }
    if (player2Information.x<0) {
      player2Information.x=player2Information.x+35;
    }

    for (int i=0;i<7;i++) {
      for (int j=0;j<5;j++) {
        if ((player1Information.x)%35==7*j+i) {
          onButton[7*j+i]=true;
          color1[7*j+i]=0;
        }
        else if ((player2Information.x)%35==7*j+i) {
          onButton[7*j+i]=true;
          color1[7*j+i]=200;
        }
        else {
          onButton[7*j+i]=false;
        }
        csButton[7*j+i].draw(onButton[7*j+i], color1[7*j+i]);
      }
    }
  }
  if (superLink==0) {
    if (!(MBInformation.x==-1)) {
      superLink=1;
    }
    if (initialMusic<0) {
      initialMusic=initialMusic+55;
    }
    for (int i=0; i<55; i++) {
      if (!(i==initialMusic+6)) {
      }
    }
    image(musicMenuImage, 0, 0, 800, 600);
    for (int i=0; i<11; i++) {
      if (i<6) {
        musicBox(19+71*i, 200, 52, 300, 20*i );
        colorMode(HSB);
        fill(0, 255, 50*i );
      }
      else if (i<10) {
        musicBox(19+71*i, 200, 52, 300, 20*(5-(i%5)));
        colorMode(HSB);
        fill(0, 255, 50*(5-(i%5)) );
      }
      else {
        musicBox(19+71*i, 200, 52, 300, 0 );
        colorMode(HSB);
        fill(0, 255, 0 );
      }
      textFont(myfont);
      text(musicList[(initialMusic + i)%55], 28+71*i, 200, 52, 300);
    }
  }
  if (superLink==1) {
    if ( !(MBInformation.y==-1)) {
      superLink=2;
    }
    if (initialBackground<0) {
      initialBackground=initialBackground+10;
    }
    image(backMenu, 0, 0, 800, 600);
    fill(255);
    text(backgroundList[initialBackground%10], 100, 275, 200, 50);
    image(backGround[initialBackground%10], 350, 150, 400, 300);
  }
  if (superLink==2) {
    //--------------------------------------------------------
    for (int j=0;j<35;j++) {
      if (player1Information.x==j) {
        p1Image[0]=burstR;
        p1Image[1]=burstL;
        p1Image[2]=standL;
        p1Image[3]= standR;
        p1Image[4]= moveL;
        p1Image[5]= moveR;
        p1Image[6]= recoverL;
        p1Image[7]= recoverR; 
        p1Image[8]= freezeL;
        p1Image[9]= freezeR;
        p1Image[10]= fireL;
        p1Image[11]= fireR; 
        p1Image[12]= dirtL;
        p1Image[13]= dirtR;
      }
      if (player2Information.x==j) {
        p2Image[0]=burstR;
        p2Image[1]=burstL;
        p2Image[2]=standL;
        p2Image[3]= standR;
        p2Image[4]= moveL;
        p2Image[5]= moveR;
        p2Image[6]= recoverL;
        p2Image[7]= recoverR; 
        p2Image[8]= freezeL;
        p2Image[9]= freezeR;
        p2Image[10]= fireL;
        p2Image[11]= fireR; 
        p2Image[12]= dirtL;
        p2Image[13]= dirtR;
      }
    }
    image(backGround[MBInformation.y], 0, 0, 800, 600);
    TIME+=-(1.0/50.0);
    fightingSystem.draw( p1AbsoluteBlood, p1RecoverableBlood, p2AbsoluteBlood, p2RecoverableBlood, int(TIME), p1MC, p2MC);
    player2.draw(p2Image[0], p2Image[1], p2Image[2], p2Image[3], p2Image[4], p2Image[5], p2Image[6], p2Image[7], p2Image[8], p2Image[9], p2Image[10], p2Image[11], p2Image[12], p2Image[13]);
    player1.draw(p1Image[0], p1Image[1], p1Image[2], p1Image[3], p1Image[4], p1Image[5], p1Image[6], p1Image[7], p1Image[8], p1Image[9], p1Image[10], p1Image[11], p1Image[12], p1Image[13]);
  }
}
void keyPressed() {
  if (superLink==2) {
    player1.keyPressed();
    player2.keyPressed();
  }
  if (keyCode==UP) { 
    if (superLink==-1) {
      if (player2Information.y==-1) {
        player2Information.x=player2Information.x-7;
      }
    }
    if (superLink==1) {
      initialBackground+=1;
    }
  }
  if (keyCode==DOWN) {
    if (superLink==-1) {
      if (player2Information.y==-1) {
        player2Information.x=player2Information.x+7;
      }
    }   
    if (superLink==1) {
      initialBackground+=-1;
    }
  }
  if (keyCode==LEFT) {
    if (superLink==-1) {
      if (player2Information.y==-1) {
        player2Information.x=player2Information.x-1;
      }
    }
    if (superLink==0) {
      initialMusic+=-1;
    }
  }
  if (keyCode==RIGHT) {
    if (superLink==-1) {
      if (player2Information.y==-1) {
        player2Information.x=player2Information.x+1;
      }
    }
    if (superLink==0) {
      initialMusic+=1;
    }
  }
  if (keyCode==188) {  
    if (superLink==-1) {
      for (int i=0;i<7;i++) {
        for (int j=0;j<5;j++) { 
          if ( (abs(player2Information.x))%35==7*j+i) {
            player2Information.y=7*j+i;
          }
        }
      }
    }
    if (superLink==0) {
      MBInformation.x=initialMusic+6;
    }
    if (superLink==1) {
      MBInformation.y=initialBackground;
    }
  }
  if (keyCode==190) { 
    if (superLink==-1) {
      for (int i=0;i<7;i++) {
        for (int j=0;j<5;j++) { 
          if ( !(player2Information.y==-1)) {
            player2Information.y=-1;
          }
        }
      }
    }
    if (superLink==0) {
      if (MBInformation.x==-1) {
        superLink=-1;
        player1Information.y=-1;
        player2Information.y=-1;
      }
      MBInformation.x=-1;
    }
    if (superLink==1) {
      MBInformation.y=-1;
      superLink=0;
      MBInformation.x=-1;
    }
  }
  if (keyCode==87) {
    if (superLink==-1) {
      if (player1Information.y==-1) {
        player1Information.x=player1Information.x-7;
      }
    }
    if (superLink==1) {
      initialBackground+=1;
    }
  }
  if (keyCode==83) {
    if (superLink==-1) {
      if (player1Information.y==-1) {
        player1Information.x=player1Information.x+7;
      }
    }
    if (superLink==1) {
      initialBackground+=-1;
    }
  }
  if (keyCode==65) {
    if (superLink==-1) {
      if (player1Information.y==-1) {
        player1Information.x=player1Information.x-1;
      }
      if (superLink==0) {
        initialMusic+=-1;
      }
    }
  }
  if (keyCode==68) {
    if (superLink==-1) {
      if (player1Information.y==-1) {
        player1Information.x=player1Information.x+1;
      }
      if (superLink==0) {
        initialMusic+=1;
      }
    }
  }
  if (keyCode==71) { 
    if (superLink==-1) { 
      for (int i=0;i<7;i++) {
        for (int j=0;j<5;j++) { 
          if ( (abs(player1Information.x))%35==7*j+i) {
            player1Information.y=7*j+i;
          }
        }
      }
    }
    if (superLink==0) {
      MBInformation.x=initialMusic+6;
    }
    if (superLink==1) {
      MBInformation.y=initialBackground;
    }
  }
  if (keyCode==72) {
    if (superLink==-1) { 
      for (int i=0;i<7;i++) {
        for (int j=0;j<5;j++) { 
          if ( !(player1Information.y==-1)) {
            player1Information.y=-1;
          }
        }
      }
    }
    if (superLink==0) {
      if (MBInformation.x==-1) {
        player1Information.y=-1;
        player2Information.y=-1;
        superLink=-1;
      }
      MBInformation.x=-1;
    }
    if (superLink==1) {
      MBInformation.y=-1;
      superLink=0;
      MBInformation.x=-1;
    }
  }
}
void keyReleased() {
  if (superLink==2) {
    player1.keyReleased();
    player2.keyReleased();
  }
}
void musicBox(int a, int b, int c, int d, float darkness) {
  loadPixels();
  colorMode(HSB);
  for (int i=0; i<c;i++) {
    for (int j=0; j<d;j++) {
      float h=hue(pixels[800*(b+j)+(a+i)]);
      float s=saturation(pixels[800*(b+j)+(a+i)]);
      pixels[800*(b+j)+(a+i)]=color(h, s, darkness);
    }
  }
  updatePixels();
  colorMode(RGB);
}
//----------------------------------------------------------

