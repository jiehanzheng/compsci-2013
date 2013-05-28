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

class Button {
  int t;
  int color1;
  PImage character;
  float[] hue;
  float a, b, c, d; 
  Boolean onButton, clickButton;
  Button(float a, float b, float c, float d, PImage character) {
    this.a=a;
    this.b=b;
    this.c=c;
    this.d=d;
    this.character=character;
    hue= new float [int(c)];
    for (int i=0;i<c;i++) {
      float amount =map (i, 0, c, 0, PI);
      hue[i]=abs(cos(amount));
    }
  }
  void draw(boolean onButton, int color1) {
    this.color1=color1;
    this.onButton=onButton;
    t+=2;
    noStroke(); 
    image(character, a, b, c, d);
    colorMode(HSB);
    if (onButton==true) {
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a+i, b, a+i, b+d/12);
      }
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a+i, b+(d*11/12), a+i, b+d);
      }
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a, b+i, a+c/12, b+i);
      }
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a+(c*11/12), b+i, a+c, b+i);
      }
    }
  }
}
class CharacterCommonMove {
  int a, s, d, w;
  MutablePositions self, opponent;
  Boolean getPositionY=false;
  Boolean airBackDashCheckA=false;
  Boolean airBackDashCheckD=false;
  Boolean backDashFreeze=false;
  Boolean airDashCheckA=false;
  Boolean airDirectionCheckA=false;
  Boolean getAirDirectionA=false;
  Boolean airDashCheckD=false;
  Boolean airDashFreeze=false;
  Boolean airDirectionCheckD=false;
  Boolean getAirDirectionD=false;
  Boolean getHighJump=true;
  Boolean doubleJumpCheck=false;
  Boolean jumpFreezeCheck=false;
  Boolean collisionRCheck=false;
  Boolean collisionLCheck=false;
  Boolean backDashCheckA=false;
  Boolean backDashCheckD=false;
  Boolean dashCheckA=false;
  Boolean dashCheckD=false;
  Boolean translationCheckA=false;
  Boolean translationCheckD=false;
  Boolean dashForwardCheck=false;
  Boolean dashBackwardCheck=false;
  Boolean jumpCheck=false;
  Boolean highJumpCheck=false;
  Boolean jumpForwardCheck=false;
  Boolean jumpBackwardCheck=false;
  Boolean directionCheck;//true=right, false=left
  Boolean standCheck;
  float speedX;
  float speedY;
  float initialPositionY;
  float opponentSpeedX=0;
  float opponentSpeedY=0;
  float accelerationY=0;
  float firePosition;
  int dashCounterD=0;
  int dashCounterA=0;
  int jumpCounterW=0;
  int CounterS=0;
  int time;
  int angle=0;
  float timeG=0;
  boolean userKeyPressedD = false;
  boolean userKeyPressedA=false;
  boolean userKeyPressedS=false;
  boolean userKeyPressedW=false;
  CharacterCommonMove (boolean directionCheck, int a, int s, int d, int w, 
  MutablePositions self, MutablePositions opponent 
    ) {
    this.directionCheck=directionCheck;
    this.a=a;
    this.s=s;
    this.d=d;
    this.w=w;
    this.self = self;
    this.opponent = opponent;
  }
  void draw(PImage burstR, PImage burstL, PImage standL, PImage standR, PImage moveL, PImage moveR, PImage recoverL, PImage recoverR, PImage freezeL, PImage freezeR, PImage fireL, PImage fireR, PImage dirtL, PImage dirtR) {
    time=millis();
    if (self.y>=350) {
      jumpFreezeCheck=false;
    }
    else {
      jumpFreezeCheck=true;
    }
    self.x+=speedX;
    self.y+=speedY;
    opponent.x+=opponentSpeedX;
    opponent.y+=opponentSpeedY;
    if (self.y<350&&dashCheckD==true&&getAirDirectionD==false) {//airDash
      airDashFreeze=true;
      airDashCheckD=true;
      getAirDirectionD=true;
      airDirectionCheckD=directionCheck;
    }
    if (self.y<350&&dashCheckA==true&&getAirDirectionA==false) {//airDash
      airDashFreeze=true;
      airDashCheckA=true;
      getAirDirectionA=true;
      airDirectionCheckA=directionCheck;
    }
    if (highJumpCheck==false) {
      if (jumpCheck==true&&directionCheck==true) {
        timeG+=0.17;
        speedY=-13*timeG+3*sq(timeG);
        if ( airDashFreeze==false) {
          image(moveR, self.x, self.y, 120, 200);
        }
      }
      if (jumpCheck==true&&directionCheck==false) {
        timeG+=0.17;
        speedY=-13*timeG+3*sq(timeG);
        if ( airDashFreeze==false) {
          image(moveL, self.x, self.y, 120, 200);
        }
      }
    }
    if (highJumpCheck==true) {
      if (getHighJump==true) {
        firePosition=self.x;
        getHighJump=false;
      }  
      if (directionCheck==true) {
        timeG+=0.17;
        speedY=-15*timeG+3*sq(timeG);
        if ( airDashFreeze==false) {
          image(moveR, self.x, self.y, 120, 200);
          if (timeG>1&&timeG<5) {
            image(burstR, firePosition, 450, 100, 100);
          }
        }
      }
      if (directionCheck==false) { 
        timeG+=0.17;
        speedY=-15*timeG+3*sq(timeG);
        if ( airDashFreeze==false) {
          image(moveL, self.x, self.y, 120, 200);
          if (timeG>1&&timeG<5) {
            image(burstR, firePosition, 450, 100, 100);
          }
        }
      }
    }

    if (self.y>350) { 
      angle=0;
      self.y=350; 
      speedY=0; 
      speedX=0;
      timeG=0;
      getPositionY=false;
      airBackDashCheckA=false;
      airBackDashCheckD=false;
      backDashFreeze=false;
      backDashCheckA=false;
      backDashCheckD=false;
      jumpCheck=false;
      doubleJumpCheck=false;
      highJumpCheck=false;
      getHighJump=true;
      airDashFreeze=false;
      airDashCheckD=false;
      getAirDirectionD=false;
      airDashCheckA=false;
      getAirDirectionA=false;
    }
    if (self.x>=(width-50)) { 
      self.x=width-50;
    }
    if (self.x<=-40) { 
      self.x=-40;
    }
    if (self.x>=(opponent.x-10)&&directionCheck==true&&self.y>=150&&opponent.y>=150) {
      collisionRCheck=true;
    } 
    else {
      collisionRCheck=false;
    }
    if (collisionRCheck==true) {
      opponent.x=self.x+11;
    }
    if (( self.x<=(opponent.x+10) ) && ( directionCheck==false ) && ( self.y>=150 )&&opponent.y>=150 ) {
      collisionLCheck=true;
    }
    else {
      collisionLCheck=false;
    }
    if (collisionLCheck==true) {
      opponent.x=self.x-11;
    }
    if (self.x<= opponent.x) {
      directionCheck=true;
    }
    else {
      directionCheck=false;
    }
    if (backDashFreeze==false) {
      if (translationCheckD==true&&directionCheck==true&&jumpFreezeCheck==false) {
        speedX=5;
        image(moveR, self.x, self.y, 120, 200);
      }
      if (translationCheckD==true&&directionCheck==true&&jumpFreezeCheck==true) {
        speedX=3;
        if ( airDashFreeze==false) {
          image(moveR, self.x, self.y, 120, 200);
        }
      }
      if (translationCheckA==true&&directionCheck==true&&jumpFreezeCheck==false) {
        speedX=-5;
        image(moveR, self.x, self.y, 120, 200);
      }
      if (translationCheckA==true&&directionCheck==true&&jumpFreezeCheck==true) {
        speedX=-3;
        if ( airDashFreeze==false) {
          image(moveR, self.x, self.y, 120, 200);
        }
      }
      if (translationCheckD==true&&directionCheck==false&&jumpFreezeCheck==false) {
        speedX=5;
        image(moveL, self.x, self.y, 120, 200);
      }
      if (translationCheckD==true&&directionCheck==false&&jumpFreezeCheck==true) {
        speedX=3;
        if ( airDashFreeze==false) {
          image(moveL, self.x, self.y, 120, 200);
        }
      }
      if (translationCheckA==true&&directionCheck==false&&jumpFreezeCheck==false) {
        speedX=-5;
        image(moveL, self.x, self.y, 120, 200);
      }
      if (translationCheckA==true&&directionCheck==false&&jumpFreezeCheck==true) {
        speedX=-3;
        if ( airDashFreeze==false) {
          image(moveL, self.x, self.y, 120, 200);
        }
      }
      if (dashCheckD==true&&directionCheck==true&&jumpFreezeCheck==false) {
        speedX=10;
        image(moveR, self.x, self.y, 120, 200);
        image(dirtR, self.x-300, self.y+150, 330, 50);
      }
      if (dashCheckA==true&&directionCheck==false&&jumpFreezeCheck==false) {
        speedX=-10;
        image(moveL, self.x, self.y, 120, 200);
        image(dirtL, self.x+120, self.y+150, 330, 50);
      }
      if (airDashCheckD==true) {
        if (airDirectionCheckD==true) {
          speedX=10;
          pushMatrix();
          translate(self.x, self.y);
          rotate(radians(90));
          image(moveR, 0, -120, 120, 200);
          image(burstR, 0, 50, 100, 100);
          popMatrix();
        }
      }
      if (airDashCheckA==true) {
        if (airDirectionCheckA==false) {
          speedX=-10;
          pushMatrix();
          translate(self.x+120, self.y);
          rotate(radians(-90));
          image(moveL, -120, -120, 120, 200);
          image(burstR, -80, 50, 100, 100);
          popMatrix();
        }
      }
    }
    if (dashCheckD==true&&directionCheck==false) {
      if (getPositionY==false) {
        getPositionY=true; 
        initialPositionY=self.y;
      }
      if (initialPositionY==350) {
        backDashCheckD=true;
        backDashFreeze=true;
      }
      else {
        airBackDashCheckD=true;
      }
    }
    if (backDashCheckD==true) {
      backDashD();
    }
    if (dashCheckA==true&&directionCheck==true) {
      if (getPositionY==false) {
        getPositionY=true; 
        initialPositionY=self.y;
      }
      if (initialPositionY==350) {
        backDashCheckA=true;
        backDashFreeze=true;
      }
      else {
        airBackDashCheckA=true;
      }
    }
    if (airBackDashCheckA==true) {
      airBackDashA();
    }
    if (airBackDashCheckD==true) {
      airBackDashD();
    }
    if (backDashCheckA==true) {
      backDashA();
    }
    if (speedX==0&&speedY==0) {
      standCheck=true;
    }
    else {
      standCheck=false;
    }
    if (standCheck==true&&directionCheck==true) { 
      image(standR, self.x, self.y, 120, 200);
    }
    if (standCheck==true&&directionCheck==false) { 
      image(standL, self.x, self.y, 120, 200);
    }
  }
  void keyPressed() {  
    if (keyCode==s) {
      if (userKeyPressedS==false) {
        CounterS=millis();
        userKeyPressedS=true;
      }
    }
    if ( keyCode==w ) {
      if (self.y<350 && doubleJumpCheck==false) {
        doubleJumpCheck=true;
        timeG=0;
      }
      if (highJumpCheck==false&&self.y==350) {
        jumpCheck=true;
      }
      if (0<(time-CounterS)&&(time-CounterS)<200) {
        highJumpCheck=true;
      }
    }
    if ((keyCode==d )&& dashCheckD==false) {
      translationCheckD=true;
      if (0<(time-dashCounterD)&&(time-dashCounterD)<200) {
        dashCheckD=true;
      }
      if (userKeyPressedD==false) {
        dashCounterD=millis();
        userKeyPressedD=true;
      }
    }
    if (keyCode==a  && dashCheckA==false) {    
      translationCheckA=true;
      if (0<(time-dashCounterA)&&(time-dashCounterA)<200) {
        dashCheckA=true;
      }
      if (userKeyPressedA==false) {
        dashCounterA=millis();
        userKeyPressedA=true;
      }
    }
  }
  void keyReleased() {
    if (keyCode==d) {
      userKeyPressedD = false;
      if (dashCheckD==true) {
        speedX=0;
        dashCheckD=false;
      }
      if (translationCheckD==true) { 
        speedX=0;
        translationCheckD=false;
      }
    }
    if (keyCode==a) {
      userKeyPressedA=false;
      if (dashCheckA==true) {
        speedX=0;
        dashCheckA=false;
      }
      if (translationCheckA==true) {
        speedX=0;
        translationCheckA=false;
      }
    }
    if (keyCode==s) {
      userKeyPressedS=false;
    }
    if (keyCode==w) {
      userKeyPressedW=false;
    }
  }

  void backDashA() {
    angle+=20;
    timeG+=0.17;
    speedY=-13*timeG+3*sq(timeG);
    speedX=-3;
    pushMatrix();
    translate(self.x, self.y);
    rotate( radians(angle));
    image(moveR, -50, -120, 120, 200);
    popMatrix();
  }
  void backDashD() {
    angle+=-20;
    timeG+=0.17;
    speedY=-13*timeG+3*sq(timeG);
    speedX=3;
    pushMatrix();
    translate(self.x, self.y);
    rotate( radians(angle));
    image(moveL, -70, -80, 120, 200);
    popMatrix();
  }
  void airBackDashA() {
    angle+=20;
    speedX=-3;
    pushMatrix();
    translate(self.x, self.y);
    rotate( radians(angle));
    image(moveR, -50, -120, 120, 200);
    popMatrix();
  }
  void airBackDashD() {
    angle+=-20;
    speedX=3;
    pushMatrix();
    translate(self.x, self.y);
    rotate( radians(angle));
    image(moveL, -70, -80, 120, 200);
    popMatrix();
  }
}

class FightingSystem {
  float[] hue;
  int c=300;
  FightingSystem() {
    hue= new float [int(c)];
    for (int i=0;i<c;i++) {
      float amount =map (i, 0, c, 0, PI/2);
      hue[i]=abs(cos(amount));
    }
  }
  void draw(int a, int b, int c, int d, int t, int e, int f) {
    colorMode(HSB);
    for (int i=0; i<300;i++) {       
      if (10*i>(1000-b)*3) { 
        stroke(0, 255, hue[i]*255/2);
        line(25+i, 30, 55+i, 45);
      }
      if (10*i>(1000-a)*3) { 
        stroke(0, 255, hue[i]*255);
        line(25+i, 30, 55+i, 45);
      }
      if (10*i>(1000-d)*3) {
        stroke(0, 255, hue[i]*255/2);
        line(775-i, 30, 745-i, 45);
      }
      if (10*i>(1000-c)*3) {
        stroke(0, 255, hue[i]*255);
        line(775-i, 30, 745-i, 45);
      }
    }
    numberDisplay(t, 348, 15, 80);
    for (int i=0; i<200;i++) {       
      if (3*i>(300-e)*2) { 
        stroke(150, 255, hue[i]*255);
        line(25+i, 535, 25+i, 565);
      }
      if (3*i>(300-f)*2) {
        stroke(150, 255, hue[i]*255);
        line(775-i, 535, 775-i, 565);
      }
    }
  }
}
class MutablePositions {
  float x, y;
  MutablePositions(float x, float y) {
    this.x = x;
    this.y = y;
  }
}
void numberDisplay(int t, int a, int b, int displayX ) {
  int displayY=2*displayX/3;
  noStroke();
  if (t%10==1) {
    rect(a+(17*displayX/21), b+(displayY/10), displayX/21, displayY*4/5);
  }
  if ((t%100)-(t%10)==10) {
    rect(a+(17*displayX/21)-(displayX/3), b+(displayY/10), displayX/21, displayY*4/5);
  }
  if ((t%1000)-(t%100)==100) {
    rect(a+(17*displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, displayY*4/5);
  }
  if (t%10==2) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==2) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==20) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==200) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==3) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==30) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==300) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==4) {
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==40) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==400) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==5) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==50) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==500) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==6) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==60) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==600) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, 
    displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, 
    displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/
    10+(displayX/42));
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 
    4*displayY/10);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==7) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==70) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==700) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==8) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==80) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==800) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if (t%10==9) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==90) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==900) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if (t%10==0) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==0&&t>=99) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
}
class PlayerInformation {
  int x;
  int y;
  PlayerInformation(int x, int y) {
    this.x=x;
    this.y=y;
  }
}
class Shiranui extends CharacterCommonMove {
  int g, h, j;
  boolean lightAttackCheck=false;
  boolean ACDriveCheck=false;
  boolean keyDownG=false;
  boolean keyDownH=false;
  boolean keyDownJ=false;
  int timeG, timeH, timeJ;
  Shiranui(boolean directionCheck, int a, int s, int d, int w, MutablePositions self, MutablePositions opponent, int g, int h, int j ) {
    super(directionCheck, a, s, d, w, self, opponent);
    this.g=g;
    this.j=j;
    this.h=h;
  }
  void draw(PImage burstR, PImage burstL, PImage standL, PImage standR, PImage moveL, PImage moveR, PImage recoverL, PImage recoverR, 
  PImage freezeL, PImage freezeR, PImage fireL, PImage fireR, PImage dirtL, PImage dirtR) {
    super.draw(burstR, burstL, standL, standR, moveL, moveR, recoverL, recoverR, freezeL, freezeR, fireL, fireR, dirtL, dirtR);
  }
  void keyPressed() {
    super.keyPressed();
    if (keyCode==g) {
      if (keyDownG==false) {
        timeG=millis();
        lightAttackCheck=true;
      }
      else{lightAttackCheck=false;}
      keyDownG=true;
    }
    if (keyCode==j) {
      if (keyDownJ==false) {
        timeJ=millis();
      }
      keyDownJ=true;
    }
    if (keyCode==h) {
      if (keyDownH==false) {
        timeH=millis();
      }
      keyDownH=true;
    }
    if (keyDownG==true && keyDownH==true && keyDownJ==true && ((millis()-timeG)<30||(millis()-timeH)<30||(millis()-timeJ)<30)) {
      ACDriveCheck=true;
    }
  }
  void keyReleased() {
    super.keyReleased();
    if (keyCode==g) {
      keyDownG=false;
    }
    if (keyCode==j) {
      keyDownJ=false;
    }
    if (keyCode==h) {
      keyDownH=false;
    }
  }
}


