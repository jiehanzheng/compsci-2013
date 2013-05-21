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
