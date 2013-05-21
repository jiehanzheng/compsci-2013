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

