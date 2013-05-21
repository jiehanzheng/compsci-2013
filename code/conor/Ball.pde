class Ball extends Objects
{
  float forcey=0;
  float accely=0;
  float forcex=0;
  float accelx=0;
  float lastheight;
  float currentheight;
  float lastvy1;
  float currentvy1;
  float lastvy2;
  float currentvy2;
  int hitcounter;
  float rollres; //rolling resistance
  float computedvx;
  float computedvy;
  float[] compvx = new float[30];
  float[] compvy = new float[30];

  //used to scale correctly from pixels to metric. 
  //  float finalx;
  //  float finaly;
  //  float finals;
  //  float finalvy;
  //  float finalvx;

  Ball()
  {
    //floorfriction=floorfriction/d;
  }

  void drawme() {
    smooth();
    fill(colr, colg, colb);
    ellipse(x, y, s, s);
  }

  void update() {
    rollres=(gravity*mass*corr)/(s/2);
    if (fixer2>2) { //makes sure when the ball is done bouncing, it doesn't go through the page
      y=windowheight-s/2;
      vy=0;
    }
    //vy=vy+gravity;
    //    y=(y)+((vy)+(0.5*gravity))/frameRate;
    //    x=(x)+(vx/frameRate);
    //    vy=vy+gravity;
    if (y<windowheight-s/2) {
      fixer=0;
      fixer2=0;
    }

    if (x>windowwidth-s/2) {
      //      x=windowwidth-s/2;
      forcex=forcex+rollres;
      vx=vx*-1;
      //      forcex=forcex*-1;
    }

    if (x<0+s/2) {
      forcex=forcex-rollres;
      //      x=0+s/2;
      //      vx=vx*corr;
      vx=vx*-1;
    }
    //checkbounce();
    forcey+=(gravity*mass);
    accely=forcey/mass;
    y=y+(vy+(0.5*accely))/60; //dividing by frameRate just doesn't work.
    vy+=accely;
    checkbounce();

    //    currentheight=y;

    accelx=forcex/mass;
    x=x+(vx+(0.5*accelx))/60;
    vx+=accelx;
    forcey=0;
    forcex=0;
    //    if(vy>4.8 && vy<5.0) {
    //      println(vy);
    //    }
    computedvx=0;
    computedvy=0;
  }

  void checkbounce() {
    if (y>=windowheight-s/2) {
      fixer2++;
      if (vx>0) {
        forcex=forcex-rollres;
      }
      if (vx<0) {
        forcex=forcex+rollres;
      }


      //println(vy);
      //      if(cor!=1) {       <==================Doesn't Work as solution===============
      //        y=windowheight-s/2;
      //      }
      //y=windowheight-s/2;  <==================PROBLEM TO COR OF 1================
      if (fixer<1) {
        vy=vy*sqrt(cor);
        vy=vy*-1;
        //if(vy<0.01 && vy>-0.01) {
        // vy=0;
        //}
      }
      fixer++;
      if (fixer>1) {
        fixer=0;
      }
    }
  }

  void computehitx(int i) {
    for (int p=i-1; p>=0; p--) {
      float yourvx=this.getvx();
      float othervx=objects[p].getvx();
      float changemass = this.getmass()-objects[p].getmass();
      float addedmass = this.getmass()+objects[p].getmass();
      compvx[p]=(((changemass/addedmass)*yourvx)+(((2*objects[p].getmass())/addedmass)*(othervx)));//*theta;
    }
    for (int p=i+1; p<num; p++) {
      float yourvx=this.getvx();
      float othervx=objects[p].getvx();
      float changemass = this.getmass()-objects[p].getmass();
      float addedmass = this.getmass()+objects[p].getmass();
      compvx[p]=(((changemass/addedmass)*yourvx)+(((2*objects[p].getmass())/addedmass)*(othervx)));//*theta;
    }
  }
  
  void computehity(int i) {
    for (int p=i-1; p>=0; p--) {
      float yourvy=this.getvy();
      float othervy=objects[p].getvy();
      float changemass = this.getmass()-objects[p].getmass();
      float addedmass = this.getmass()+objects[p].getmass();
      compvy[p]=(((changemass/addedmass)*yourvy)+(((2*objects[p].getmass())/addedmass)*(othervy)));//*theta;
    }
    for (int p=i+1; p<num; p++) {
      float yourvy=this.getvy();
      float othervy=objects[p].getvy();
      float changemass = this.getmass()-objects[p].getmass();
      float addedmass = this.getmass()+objects[p].getmass();
      compvy[p]=(((changemass/addedmass)*yourvy)+(((2*objects[p].getmass())/addedmass)*(othervy)));//*theta;
    }
  }

  void spring(float forcey_) {
    y=y-1;
    forcey=forcey+forcey_;
    fixer2=0;
    //vy=vy*-1;
  }

  void newvx(float theta, float yourmass, float yourvx, float othermass, float othervx) { //momentum
    if (fixer3x<1) {
      fixer3x++;
      //  float yourmomentum = yourmass*yourvx;
      //  float othermomentum = othermass*othervx;
      //  float totalmomentum = yourmomentum+othermomentum;
      float changemass = yourmass-othermass;
      float addedmass = yourmass+othermass;
      //  vx=(((othervx*changemass)/addedmass) + (2*othermass*othervx))/(addedmass)*-theta;
      computedvx=(((changemass/addedmass)*yourvx)+(((2*othermass)/addedmass)*(othervx)))*theta;
    }
  }

  void newvy(float theta, float yourmass, float yourvy, float othermass, float othervy) { //momentum
    if (fixer3y<1) {
      fixer3y++;
      float changemass = yourmass-othermass;
      float addedmass = yourmass+othermass;
      computedvy=(((changemass/addedmass)*yourvy)+(((2*othermass)/addedmass)*(othervy)))*theta;
      //vy*=rollres;
    }
  }
  
  void grabbed() {
    x=mouseX;
    y=mouseY;
    vy=0;
    vx=0;
    y=y-1;
   
  }

  void changevx(int whichball) {
    vx=compvx[whichball];
  }

  void changevy(int whichball) {
    vy=compvy[whichball];
  }

  void applyforce(float force) {
    forcex=forcex+force;
  }

  void resetfixer3() {
    fixer3x=0;
    fixer3y=0;
  }
  
  float getcorr() {
    return corr;
  }
  
  float getcor() {
    return cor;
  }

  float getradius() {
    return s/2;
  }
  //  
  float getx() {
    return x;
  }
  //  
  float gety() {
    return y;
  }

  float getvx() {
    return vx;
  }

  float getvy() {
    return vy;
  }

  float getmass() {
    return mass;
  }

  float getaccelx() {
    return accelx;
  }

  float getaccely() {
    return accely;
  }


  //  float getxforce() {
  //    returnforcex = accelx*mass;
  //    return returnforcex;    
  //  }
  //  
  //  float getyforce() {
  //    returnforcey = accely*mass;
  //  }
  //  
  //  void keyPressed() {
  //  if(key == 'a') {
  //    vx=-3.0;
  //  }
  //  if(key =='d') {
  //    vx=3.0;
  //  }
  //}
}

