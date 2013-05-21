/* @pjs globalKeyEvents="true"; */
Ball[] objects;
float frames = 60;
float gravity =  9.81; //0.035 //FORCE of gravity //9.81 pixels a frame.
int windowheight = 300;
int windowwidth = 600;
Ball[] originalobj;

//-------------------------------------------------------------------------------//
int num=0; //total number of objects
//-------------------------------------------------------------------------------//

float floorfriction=-0.9; //must be negative in order to lost speed
int counter=0;
float xmover=733.86;
int pause = 1;
float xmover2=655;

void setup() {
  size(800, 500);
  background(255);
  rectMode(CENTER);
  frameRate(frames);
  objects = new Ball[30];
  originalobj= new Ball[30];

  //60 = 1m/s
  //objects................(r,  g,   b,    x,    y,   vx, vy, d, cor, mass, corr, accelx, accely)

  //////////////////////////////////////////6 ball on ground////////////////////////////////
//  objects[0] = new testBall(0, 0, 255, 100, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); //blue ball
//  objects[1] = new testBall(255, 0, 0, 400, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); //red ball
//  objects[2] = new testBall(0, 255, 0, 300, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); //green ball
//  objects[3] = new testBall(0, 0, 0, 500, 290, 180, 0, 0, 0.5, 1, 0, 0, 0); //black ball
//  objects[4] = new testBall(255, 255, 255, 200, 290, 0, 0, 2, 0.5, 1, 0, 0, 0); //white ball
//  objects[5] = new testBall(255, 255, 0, 550, 290, 0, 0, 2, 0.5, 1, 0, 0, 0); //yellow ball

  /////////////////////////////////////////2 ball on top of eachother////////////////////////
  //    objects[0] = new testBall(0, 0, 255, 400, 0, 0, 100, 0, 0.5, 1, 0.9, 0, 0);
  //    objects[1] = new testBall(255, 0, 0, 400, 290, 0, 1000, 0, 0.5, 1, 0.9, 0, 0);

  /////////////////////////////////////////4 ball all around///////////////////////////////////
  //      objects[0] = new testBall(0, 0, 255, 100, 0, 180, 0, 0, 0.5, 1, .5, 0, 0); //blue ball
  //      objects[1] = new testBall(255, 0, 0, 400, 0, -180, 0, 0, 0.5, 1, .5, 0, 0); //red ball
  //      objects[2] = new testBall(0, 255, 0, 300, -500, 0, 0, 0, 0.5, 1, .5, 0, 0); //green ball
  //      objects[3] = new testBall(0, 0, 0,   500, 290, 310, 0, 0, 0.5, 1, .5, 0, 0);

  ////////////////////////////////////////24 balls on the ground////////////////////////////
  //    objects[0] = new testBall(0, 0, 255, 20, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[1] = new testBall(255, 0, 0, 41, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[2] = new testBall(0, 255, 0, 62, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[3] = new testBall(0, 0, 0,   83, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[4] = new testBall(255, 0, 255,104,  290, 0, 0, 2, 0.5, 1,     0, 0, 0); 
  //    objects[5] = new testBall(255, 255, 0,125, 290, 0, 0, 2, 0.5, 1,   0, 0, 0);
  //    objects[6] = new testBall(0, 0, 255, 146, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[7] = new testBall(255, 0, 0, 167, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[8] = new testBall(0, 255, 0, 188, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[9] = new testBall(0, 0, 0,   209, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[10] = new testBall(255, 0, 255,230,  290, 0, 0, 2, 0.5, 1,     0, 0, 0); 
  //    objects[11] = new testBall(255, 255, 0,251, 290, 0, 0, 2, 0.5, 1,   0, 0, 0); 
  //    objects[12] = new testBall(0, 0, 255, 272, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[13] = new testBall(255, 0, 0, 293, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[14] = new testBall(0, 255, 0, 314, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[15] = new testBall(0, 0, 0,   335, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[16] = new testBall(255, 0, 255,356,  290, 0, 0, 2, 0.5, 1,     0, 0, 0); 
  //    objects[17] = new testBall(255, 255, 0,377, 290, 0, 0, 2, 0.5, 1,   0, 0, 0); 
  //    objects[18] = new testBall(0, 0, 255, 398, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[19] = new testBall(255, 0, 0, 419, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[20] = new testBall(0, 255, 0, 440, 290, 0, 0, 0, 0.5, 1, 0, 0, 0); 
  //    objects[21] = new testBall(0, 0, 0,   461, 290, 0, 0, 0, 0.5, 1, 0, 0, 0);
  //    objects[22] = new testBall(255, 0, 255,482,  290, 0, 0, 2, 0.5, 1,     0, 0, 0); 
  //    objects[23] = new testBall(255, 255, 0,503, 290, 120, 0, 2, 0.5, 1,   0, 0, 0); 

  //////////////////////1 ball sample//////////////////////////////////
  //    objects[0] = new testBall(255, 255, 0,250, 0, 0, 0, 2, 0.5, 1,   0, 0, 0);
  for (int i=0; i<num; i++) {
    originalobj[i]=objects[i];
  }
}

void draw() {
  frameRate(frames);
  background(255);
  //contactcheck();
  for (int i=0; i<num; i++) {
    objects[i].computehitx(i);
    objects[i].computehity(i);
  }
  for (int i=num-1; i>0; i--) {
    for (int w=0; w<i; w++) {
      PVector cVect = new PVector();
      cVect.x = objects[i].getx()-objects[w].getx();
      cVect.y = objects[i].gety()-objects[w].gety();
      float cVectDist = sqrt(sq(cVect.x) + sq(cVect.y)); //distance formula
      float theta = atan2(cVect.y, cVect.x);
      if (cVectDist <= (objects[i].getradius()) + (objects[w].getradius())) {
        objects[i].changevx(w);
        objects[w].changevx(i);
        objects[i].changevy(w);
        objects[w].changevy(i);
      }
    }
  }
  
  updateanddraw();
  drawinterface();
  heightmeter();
  coordhelper();
}

void coordhelper() {
  fill(0);
  text("x = " + mouseX, mouseX +6, mouseY - 5);
  text("y = " + mouseY, mouseX +6, mouseY - 15);
}

void updateanddraw() {
  for (int i=0; i<num; i++) {
    objects[i].drawme();
    if (pause>0) {
      objects[i].update();
    }
  }
}

void contactcheck() {
  for (int i=num-1; i>0; i--) {
    for (int w=0; w<i; w++) {
      PVector cVect = new PVector();
      cVect.x = objects[i].getx()-objects[w].getx();
      cVect.y = objects[i].gety()-objects[w].gety();
      float cVectDist = sqrt(sq(cVect.x) + sq(cVect.y)); //distance formula
      float theta = atan2(cVect.y, cVect.x);
      //        if (objects[i].getx()-objects[w].getx() > 0) {
      //          theta*=-1;
      //        }
      //float atan(cVect.x, cVect.y);
      float sine = sin(theta);
      float cosine = cos(theta);
      float ivx=objects[i].getvx();
      float wvx=objects[w].getvx();
      float ivy=objects[i].getvy();
      float wvy=objects[w].getvy();
      //        println("atan2 = " + theta);
      //        println("sine = " + sine);
      //        println("cosine = " + cosine);
      objects[i].newvx(cosine, objects[i].getmass(), ivx, objects[w].getmass(), wvx);
      objects[w].newvx(cosine, objects[w].getmass(), wvx, objects[i].getmass(), ivx);
      objects[i].newvy(sine, objects[i].getmass(), ivy, objects[w].getmass(), wvy);
      objects[w].newvy(sine, objects[w].getmass(), wvy, objects[i].getmass(), ivy);

      if (cVectDist <= (objects[i].getradius()) + (objects[w].getradius())) {
        //        objects[i].changevx();
        //        objects[w].changevx();
        //        objects[i].changevy();
        //        objects[w].changevy();
        //          float theta;
        //          float sine;
        //          float cosine;
        //          if (objects[i].getx()-objects[w].getx() >= 0) {
        //            theta = atan2(cVect.y, cVect.x);
        //            sine = sin(theta);
        //            cosine = cos(theta);
        //          }
        //         else if(objects[i].getx()-objects[w].getx() < 0) {
        //            theta = (atan2(cVect.y, cVect.x))*-1; 
        //            sine = sin(theta);
        //            cosine = cos(theta);
        //         }
        //        objects[i].update();
        //        objects[w].update();
        //println(cosine);
        //      }
        //      else if (cVectDist > (objects[i].getradius()) + (objects[w].getradius())) {
        //        objects[i].resetfixer3();
        //        objects[w].resetfixer3();
        //      }
      }
    }
  }
}


void heightmeter() {
  for (int i = 0; i < num; i++) {
    if (objects[i].gety() < 0) {
      fill(255);
      rect(objects[i].getx(), 20, 100, 10);
      fill(0);
      text((windowheight/10+(-1*objects[i].gety())/10) + "m", objects[i].getx()-25, 25);
      triangle(objects[i].getx(), 1, objects[i].getx() + 10, 9, objects[i].getx() - 10, 9);
    }
  }
}


void outerspring() {
  for (int i = 0; i <num; i++) {
    if (objects[i].gety()+objects[i].getradius() > windowheight - 50) {
      if (objects[i].getvy() >0) {
        objects[i].spring(10);
      }
      else if (objects[i].getvy() <=0) {
        objects[i].spring(-10);
      }
    }
  }
}

void applyforce() {
  objects[0].applyforce(10);
}

void flipgravity() {
  gravity=gravity*-1;
  //need to add just a tiny bit to vy in order to get the object to move.
}

void drawinterface() {
  gravityslider();
  doPause();
  //framerateslider();
  line(0, windowheight, windowwidth, windowheight);
  line(windowwidth, 0, windowwidth, windowheight);
  fill(0);
  text(windowheight/50 + "m", windowwidth + 5, windowheight/2);
  text(windowwidth/60 + "m", windowwidth/2, windowheight + 15);
  text(int(frameRate) + "FPS", 750, 15);
  ballinterface();
  balladder();
  helpscreen();
}

void ballinterface() {
  for (int i=0; i<num; i++) {
    if (mouseX > (objects[i].getx() - objects[i].getradius()) && mouseX < (objects[i].getx() + objects[i].getradius())) {
      if (mouseY > (objects[i].gety() - objects[i].getradius()) && mouseY < (objects[i].gety() + objects[i].getradius())) {
        if (mousePressed == true && mouseButton == LEFT) {
          objects[i].grabbed();
        }
        if (mousePressed == true && mouseButton == RIGHT) {
          objects[i]=null;
          for(int j=i+1; j<num; j++) {
            objects[j]=objects[i];
          }
          num--;
        }
        fill(255);
        rect(mouseX + 35, mouseY - 40, 70, 50);
        fill(0);
        text("Mass = " + objects[i].getmass(), mouseX + 6, mouseY - 19);
        text("CoR = " + objects[i].getcor(), mouseX + 6, mouseY - 29);
        text("CoRR = " + objects[i].getcorr(), mouseX + 6, mouseY - 39);
      }
    }
  }
}

void gravityslider() {
  fill(0);
  text("9.81", 631, 55);
  text("0", 705, 55);
  text("-9.81", 761, 55);
  text("GRAVITY: " + gravity, 625, 25);
  fill(255);
  rect(625, 50, 8, 8);
  rect(700, 50, 8, 8);
  rect(755, 50, 8, 8);
  strokeWeight(1);
  line(625, 35, 775, 35);
  fill(0);
  triangle(xmover + 5, 40, xmover-5, 40, xmover, 37);
  if (mousePressed == true && mouseButton == LEFT && mouseX > 625 && mouseX < 775 && mouseY <42 && mouseY > 28) { //SLIDER
    xmover=mouseX;
    gravity=((xmover-675)/4);
  }
  if (mousePressed == true && mouseButton == LEFT && mouseX > 615 && mouseX < 654 && mouseY < 60 && mouseY > 45) { //9.81
    gravity=9.81;
  }
  if (mousePressed == true && mouseButton == LEFT && mouseX > 690 && mouseX < 725 && mouseY < 60 && mouseY > 45) { //0
    gravity=0;
  }
  if (mousePressed == true && mouseButton == LEFT && mouseX > 745 && mouseX < 790 && mouseY < 60 && mouseY > 45) { //-9.81
    gravity=-9.81;
  }
}

void doPause() {
  fill(255);
  //rect(750, 455, 10, 30);
  rect(740, 450, 40, 40);
  fill(0);
  if(pause>0) {
    fill(255);
  }
  rect(735, 452, 10, 25);
  rect(750, 452, 10, 25);
  if (mousePressed ==  true && mouseButton == LEFT) {
    if (mouseX > 700 && mouseX < 780 && mouseY >410 && mouseY <490) {
      pause*=-1;
    }
  }
}

void magnet(int side) {
  for (int i = 0; i<num; i++) {
    objects[i].applyforce(5*side);
  }
}

void framerateslider() {
  fill(0);
  line(625, 395, 775, 395);
  triangle(xmover2+5, 400, xmover2, 397, xmover2-5, 400);
  fill(255);
  rect(625, 410, 8, 8);
  rect(700, 410, 8, 8);
  fill(0);
  text("PRESS [SPACE] TO PAUSE SCREEN", 590, 429);
  text("FRAMERATE: " + frames, 625, 380);
  text("1 FPS", 631, 415);
  text("60 FPS", 705, 415);
  if (mousePressed == true && mouseX > 615 && mouseX < 654 && mouseY < 420 && mouseY > 400) { //0
    frames=1;
  }
  if (mousePressed == true && mouseX > 690 && mouseX < 725 && mouseY < 420 && mouseY > 400) { //60
    frames=60;
  }
  if (mousePressed == true && mouseX > 625 && mouseX < 775 && mouseY <397 && mouseY > 375) { //SLIDER
    xmover2=mouseX;
    frames=((xmover2-626));
  }
}

void helpscreen() {
  fill(255);
  rect(45, 465, 60, 30);
  fill(0);
  text("HELP", 25, 470);
  if (mouseX < 75 && mouseX > 15 && mouseY < 480 && mouseY > 450) {
    fill(255);
    rect(mouseX + 75, mouseY - 100, 150, 200);
    fill(0);
    text("If two balls get stuck together, pause the program, and pull the two balls apart by dragging them.          Hold A or D to use Left or Right magnets.         To properly pick a ball up, while the ball is on the ground, pause the game and hold X to raise the ball, then you are free to pick it up", mouseX+90, mouseY+30, mouseX+90, mouseY-10);
  }
}

void balladder() {
  String s = " 1 - Light;  2 - Heavy;  3 - Small; 4 - Big;";
  fill(0);
  text("PRESS _ FOR ______ BALL", 85, 330);
  text(s, 85, 341);
}

void restart() {
  for(int i =0; i<num; i++) {
    objects[i]=originalobj[i];
  }
}

void keyPressed() {
  if (key == ' ') {
    pause*=-1;
  }
  if (key == 'z' || key == 'Z') {
    flipgravity();
  }
  if ( key == 'x') {
    outerspring();
  }
  if ( key == 'p') {
    frames=1;
  }
  if (key == 'd') {
    magnet(1);
  }
  if (key == 'a') {
    magnet(-1);
  }
  if (key == '1') {
    num++;
    objects[num-1] = new LightBall(10+num*20, 200);
  }
  if (key == '2') {
    num++;
    objects[num-1] = new HeavyBall(10+num*20, 200);
  }
  if (key == '3') {
    num++;
    objects[num-1] = new SmallBall(10+num*20, 200);
  }
  if (key == '4') {
    num++;
    objects[num-1] = new BigBall(10+num*20, 200);
  }
  if (key == 'r') {
    restart();
  }
}

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
class Objects {
  int colr; //red
  int colg; //green
  int colb; //blue
  float x;  //x coordinate
  float y; //y coordinate
  float vx; //x velocity
  float vy; // y velocity
  float s; //size
  float d; //density
  float cor; //coefficient of restitution
  float t=second(); //time in seconds. 
  float mass; // mass in kg
  float fg; //force of gravity
  float corr; //coefficient of rolling resistance
  int fixer=0;
  int fixer2=0;
  int fixer3x=0;
  int fixer3y=0;
}
class Walls
{
  Walls()
  {
  }
}

