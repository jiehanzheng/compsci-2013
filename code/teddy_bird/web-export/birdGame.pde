//TODO:
// Programming: make it so that there are less bugs and more hawks the more bugs you eat/fix animations
// Art: Background
// Gameplay: Better Control, Bosses(?), 2-Player Mode(?)

int gridSize = 400;
int totalBugs = 20;
int totalHawks = 3;

float positionX = gridSize/2;
float positionY = gridSize/2;
float velocity = 10;
float acceleration = .2;

int bugMaxVelocity = 5;
int birdMaxVelocity = 2;

Bird player = new Bird();
Counter counter = new Counter();
Game game = new Game();
Animation birdAnimation;// = new Animation("bird", 4);
Animation bugAnimation;
Animation hawkAnimation;

ArrayList<Bug> bugList = new ArrayList<Bug>();
ArrayList<Hawk> hawkList = new ArrayList<Hawk>();

PImage bird;
PImage bug;
PImage hawk;

//---------------------------------------------------------------
// @pjs preload must be used to preload the image 

/* @pjs preload="bird1.gif"; */
/* @pjs preload="bird2.gif"; */
/* @pjs preload="bird3.gif"; */
/* @pjs preload="bird4.gif"; */
/* @pjs preload="birdanimated.gif"; */

void setup() {
  println("Starting setup");
  frameRate(30);
  colorMode(RGB);
  for (int i = 0; i < totalBugs; i++) { //create bugs
    bugList.add(new Bug());
  }
  for (int i = 0; i < totalHawks; i++) {
    hawkList.add(new Hawk());
  }
  size(400,400);  // For js mode
  //size(gridSize, gridSize);  // For java mode
  bird = loadImage("bird1.gif");
  bug = loadImage("bug1.gif");
  hawk = loadImage("hawk1.gif");
  birdAnimation = new Animation("bird", 4);
  bugAnimation = new Animation("bug", 2);
  hawkAnimation = new Animation("hawk", 4);
  println("Setup complete");
}

//---------------------------------------------------------------

void draw() {
  background(33, 128, 186);
  player.refresh();
  counter.display();
  
  for (Bug b: bugList) { //update all the bugs
    b.move();
    b.refresh();
  } 
  for (Hawk h: hawkList) {
    h.move();
    h.refresh();
  }
  game.update();
}

//---------------------------------------------------------------

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      positionY -= velocity;
    }
    if (keyCode == DOWN) {
      positionY += velocity;
    }
    if (keyCode == LEFT) {
      positionX -= velocity;
    }
    if (keyCode == RIGHT) {
      positionX += velocity;
    }
  }
}

//---------------------------------------------------------------

class Bird {

  float[] xVertex = new float[2];
  float[] yVertex = new float[2];
  
  boolean invincibiliy = false;

  void refresh() {

    birdAnimation.display(positionX, positionY);
    

    if (positionX > gridSize) {
      positionX = 0;
    }
    if (positionY > gridSize) {
      positionY = 0;
    }
    if (positionX < 0) {
      positionX = gridSize;
    }
    if (positionY < 0) {
      positionY = gridSize;
    }

    xVertex[0] = positionX;
    yVertex[0] = positionY;
    xVertex[1] = positionX + bird.width;
    yVertex[1] = positionY + bird.height;
  }

  float getVertexX1() {
    return xVertex[0];
  }

  float getVertexX2() {
    return xVertex[1];
  }

  float getVertexY1() {
    return yVertex[0];
  }

  float getVertexY2() {
    return yVertex[1];
  }
}  

//---------------------------------------------------------------

class Bug {

  float velocity = random(0, bugMaxVelocity);
  float xPosition = 0;
  float yPosition = random(0, gridSize+1);

  float[] xVertex = new float[2];
  float[] yVertex = new float[2];

  void move() {
    xPosition += velocity;
  }

  void refresh() {

    bugAnimation.display(xPosition, yPosition);

    xVertex[0] = xPosition;
    yVertex[0] = yPosition;
    xVertex[1] = xPosition + bug.width;
    yVertex[1] = yPosition + bug.height;
  }

  float getVertexX1() {
    return xVertex[0];
  }

  float getVertexX2() {
    return xVertex[1];
  }

  float getVertexY1() {
    return yVertex[0];
  }

  float getVertexY2() {
    return yVertex[1];
  }

  float getXPosition() {
    return xPosition;
  }
}

//---------------------------------------------------------------

class Hawk {

  float velocity = random(1, birdMaxVelocity);
  float xPosition = 0;
  float yPosition = random(0, gridSize+1);

  float[] xVertex = new float[2];
  float[] yVertex = new float[2];

  void move() {
    xPosition += velocity;
  }

  void refresh() {

    //    rect(xPosition,yPosition,hawk.width,hawk.height);

    hawkAnimation.display(xPosition, yPosition);

    xVertex[0] = xPosition;
    yVertex[0] = yPosition;
    xVertex[1] = xPosition + hawk.width;
    yVertex[1] = yPosition + hawk.height;
  }

  float getVertexX1() {
    return xVertex[0];
  }

  float getVertexX2() {
    return xVertex[1];
  }

  float getVertexY1() {
    return yVertex[0];
  }

  float getVertexY2() {
    return yVertex[1];
  }

  float getXPosition() {
    return xPosition;
  }
}

//---------------------------------------------------------------

class Counter {
  int bugsEaten = 0;
  int lives = 1;
  void addBugs() {
    bugsEaten += 1;
  }
  void minusLives() {
    lives -= 1;
  }
  int getLives() {
    return lives;
  }
  int getBugs() {
    return bugsEaten;
  }
  void display() {
    text("Bugs Eaten: " + bugsEaten, 10, 10);
    text("Click in blue box, then use arrow keys to move", 180,10);
    
    text("Lives: " + lives, 10, 20);
    text("Eat bugs, avoid hawks", 180,20);
    
  }
}

//---------------------------------------------------------------

class Game {
  
  boolean hitable = false;

  boolean checkHit(float x1, float x2, float y1, float y2) {
    
    if (
    (((x1 >= player.getVertexX1() && x1 <= player.getVertexX2()) || (x2 >= player.getVertexX1() && x2 <= player.getVertexX2())) //checks x1/x2 of object, sees if between x1/x2 of player
    && 
      ((y1 >= player.getVertexY1() && y1 <= player.getVertexY2()) || (y2 >= player.getVertexY1() && y2 <= player.getVertexY2()) //checks y1/y2 of object, sees if between y1/y2 of player
    )) 
      ||
      (((player.getVertexX1() >= x1 && player.getVertexX1() <= x2) || (player.getVertexX2() >= x1 && player.getVertexX2() <= x2)) //checks x1/x2 of player, sees if between x1/x2 of object
    &&
      ((player.getVertexY1() >= y1 && player.getVertexY1() <= y2) || (player.getVertexY2() >= y1 && player.getVertexY2() <= y2))) //checks y1/y2 of player, sees if between y1/y2 of object
    ) 
    {
      if (hitable = true){  // BUG HERE: Should be == but this causes other problems!
//      println("got a hit");
      return true;
      }
    }
    return false;
  }

  void bugUpdate() {

    for (int i = 0; i < totalBugs; i++) {

      if (checkHit(bugList.get(i).getVertexX1(), bugList.get(i).getVertexX2(), bugList.get(i).getVertexY1(), bugList.get(i).getVertexY2()) == true) {
//        println("ate a bug");
        bugList.remove(i); 
        bugList.add(new Bug()); //add new bugs
        counter.addBugs();
//        hitable = true;
      }


      if (bugList.get(i).getXPosition() > gridSize) { //remove bugs if they are off the screen 
        bugList.remove(i); 
        bugList.add(new Bug()); //add new bugs
      }
    }

    //    if (bugList.size() < totalBugs){
    //      for (int k = 0; k < (totalBugs-bugList.size()); k++){
    //        bugList.add(new Bug());
    //      }
//    println("bugs: " + bugList.size());
  }

  void hawkUpdate() {
    for (int j = 0; j < totalHawks; j++) {

      //get killed by hawks
      if (checkHit(hawkList.get(j).getVertexX1(), hawkList.get(j).getVertexX2(), hawkList.get(j).getVertexY1(), hawkList.get(j).getVertexY2()) == true) { 
        //remove bugs if in same position as bird
//        println("hit a hawk");
        counter.minusLives();
      }

      if (hawkList.get(j).getXPosition() > gridSize) { //remove hawks if they are off the screen 
        hawkList.remove(j); 
        hawkList.add(new Hawk()); //add new hawks
      }
    }
//    if ((counter.getBugs()%5) == 0 && (counter.getBugs() > 0)){
//      totalHawks += 5;
//      for (int h = 0; h < (totalHawks - hawkList.size()); h++){
//        hawkList.add(new Hawk());
//      }
//    }
  }

  void update() {
//    println("can hit: " + hitable);
    bugUpdate();
    hawkUpdate();
    if (counter.getLives() == 0) {
      text("GAME OVER", gridSize/2, gridSize/2);
      noLoop();
    }
  }
}

//---------------------------------------------------------------

class Animation { //taken from the official processing website
  PImage[] frames = new PImage[4];
  int totalFrames;
  int frame;
  int count = 0;

  Animation(String imagePrefix, int imageCount) {
    totalFrames = imageCount;

    for (int i = 1; i <= totalFrames; i++) {
      String filename = imagePrefix + i + ".gif";
      frames[i-1] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos) {
    count++;
    if (count > 10)
    {
      count = 0;
      frame = (frame+1) % totalFrames;
    }
    image(frames[frame], xpos, ypos);
  }
}

