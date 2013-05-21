class testBall extends Ball {
  testBall(int colr_, int colg_, int colb_, float x_, float y_, float vx_, float vy_, float d_, float cor_, float mass_, float corr_, float forcex_, float forcey_) {
    colr=colr_;
    colg=colg_;
    colb=colb_;
    x=x_;
    y=y_;
    s=20;
    vx=vx_;
    vy=vy_;
    d=d_;
    cor=cor_;
    mass=mass_;
    corr=corr_;
    forcex=forcex_;
    forcey=forcey_;
  }
}

class LightBall extends Ball {
  LightBall(float x_, float y_) {
  colr=(int)random(0, 255);
  colg=(int)random(0, 255);
  colb=(int)random(0, 255);
  x=x_;
  y=y_;
  s=20;
  vx=0;
  vy=0;
  d=0;
  cor=.9;
  mass=.5;
  corr=.5;
  forcex=0;
  forcey=0;
  }
}

class HeavyBall extends Ball {
  HeavyBall(float x_, float y_) {
  colr=(int)random(0, 255);
  colg=(int)random(0, 255);
  colb=(int)random(0, 255);
  x=x_;
  y=y_;
  s=20;
  vx=0;
  vy=0;
  d=0;
  cor=.5;
  mass=3;
  corr=1;
  forcex=0;
  forcey=0;
  }
}

class SmallBall extends Ball {
  SmallBall(float x_, float y_) {
  colr=(int)random(0, 255);
  colg=(int)random(0, 255);
  colb=(int)random(0, 255);
  x=x_;
  y=y_;
  s=5;
  vx=0;
  vy=0;
  d=0;
  cor=.9;
  mass=.5;
  corr=.5;
  forcex=0;
  forcey=0;
  }
}

class BigBall extends Ball {
  BigBall(float x_, float y_) {
  colr=(int)random(0, 255);
  colg=(int)random(0, 255);
  colb=(int)random(0, 255);
  x=x_;
  y=y_;
  s=50;
  vx=0;
  vy=0;
  d=0;
  cor=.75;
  mass=1;
  corr=1;
  forcex=0;
  forcey=0;
  }
}
