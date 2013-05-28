/* @pjs globalKeyEvents="true"; */

int haloSpot =0;
boolean hit = false;
boolean launch = false;
int dx = 10;
int dy = 10;
int x = 250;
int y = 50;
int score = 0;
int numStars = 100;
int ballnum = 0;
int dySquare = 1;
int life = 3;
int moveFaster = 0;
int yMoveFaster = 700;
int xMoveFaster = 0;
int extraLife = 0;
int xExtraLife =0;
int yExtraLife = 700;
float [] starX = new float[numStars];
float [] starY = new float[numStars];
int [] starBright = new int[numStars];
ArrayList<Squares> squares = new ArrayList();
ArrayList<Balls> ball = new ArrayList();

public void setup()
{
  size(500, 700);
  frameRate(100);
  for (int i = 0; i < numStars; i++)
  {
    starX[i] = random(width);
    starY[i] = random(height);
    starBright[i] =  (int) random(255);
  }

  squares.add(new Squares((int)random(480), 700));
  ball.add(new Balls(x, y));

  moveFaster = (int)random(0, 10);
  extraLife = (int) random(0, 10);

  xMoveFaster = (int)random(0, 480);
  xExtraLife = (int)random(0, 480);
}

public void draw()
{
  background(0);

  for (int i = 0; i < numStars; i++)
  {
    fill(starBright[i]);
    stroke(starBright[i]);
    ellipse(starX[i], starY[i], 3, 3);
  }

  spaceShip A = new spaceShip();
  A.drawShip();
  squares.get(0).drawSquare();
  ball.get(ballnum).changekeepgoing(launch);
  for (int n =0;n<=ballnum;n++)
  {  
    ball.get(n).drawBalls();

    if (abs(ball.get(n).getY() - squares.get(0).getY())<=2)
      if (abs(ball.get(n).getX() - squares.get(0).getX())<=20)
      {
        hit = true;
        score += 10;
        launch = false;
        ball.get(n).changekeepgoing(launch);
        ball.get(n).changeY(1500);
        squares.remove(0);
        squares.add(new Squares((int)random(480), 700));
      }
  }
  A.levelUp();
  A.showScore();
  A.lifeCheck();
  A.showLife();
  A.extraBonus();
}

void keyPressed()
{
  if (key == 'a')
    x -= dx;
  else if (key == 'd')
    x += dx;
  else if (key == 'w')
    y -= dy;
  else if (key == 's')
    y += dy;
  else if (key == ' ')
  {
    launch = true;
    ball.add(new Balls(x, y));
    ballnum++;
  }
}

class Balls
{
  int x, y;
  boolean keepgoing = true;

  public Balls(int a, int b)
  {
    x = a;
    y = b;
  }

  int getX()
  {
    return x;
  }

  int getY()
  {
    return y;
  }

  void changeY(int s)
  {
    y = s;
  }

  void changekeepgoing(boolean c)
  {
    keepgoing = c;
  }

  void drawBalls()
  {
    if (keepgoing)
    {
      fill(255, 0, 0);
      ellipse(x, y+10, 10, 10);
      y++;
    }

    if (y > height)
      keepgoing = false;
  }
}

class spaceShip
{
  void drawShip()
  {
    fill(200, 200, 255);
    ellipse(x, y, 60, 40);
    ellipse(x, y+10, 100, 20);
    fill(0, 255, 255);
    ellipse(x, y+10+10*haloSpot, 10*haloSpot, 2*haloSpot);
    haloSpot++;
    haloSpot%=10;
  }

  void showScore()
  {
    fill(255);
    text("Score:"+score, 30, 30);
  }

  void lifeCheck()
  {
    if ((int)squares.get(0).getY() < 0)
    {
      life--;
      squares.remove(0);
      squares.add(new Squares((int)random(480), 700));
    }
    if (life <= 0)
    {
      text("Game Over", 250, 350);
      dySquare = 0;
      dy = 0;
      dx = 0;
    }
  }

  void levelUp()
  {
    if (score>50)
      dySquare = 2;
    if (score > 120)
      dySquare = 3;
  }

  void showLife()
  {
    for (int i = life; i > 0; i--)
    {
      fill(255, 0, 0);
      stroke(255);
      ellipse(440+10*i, 20, 20, 20);
    }
  }

  void extraBonus()
  {
    if (score >= 10*moveFaster)
      if (hit == true)
      {
        fill(0, 255, 0);
        ellipse(xMoveFaster, yMoveFaster, 20, 20);
        yMoveFaster--;
      }

    if (abs(y - (int) yMoveFaster)<=2)
      if (abs(x - (int) xMoveFaster)<=20)
      {
        dx = 20;
        dy = 20;
        yMoveFaster = -20;
      }

    if (score >= 10*extraLife)
      if (hit == true)
      {
        fill(255, 0, 0);
        ellipse(xExtraLife, yExtraLife, 20, 20);
        yExtraLife--;
      }

    if (abs(y - (int) yExtraLife)<=2)
      if (abs(x - (int) xExtraLife)<=20)
      {
        life++;
        yExtraLife = -20;
      }
  }
}

class Squares
{
  int x, y;

  public Squares(int a, int b)
  {
    x = a;
    y = b;
  }

  int getX()
  {
    return x;
  }
  int getY()
  {
    return y;
  }

  void drawSquare()
  {
    fill(200, 255, 255);
    rect(x, y, 20, 20);
    y -= dySquare;
    if (y == -20)
      squares.remove(0);
  }
}






















//  void drawSquare()
//  {
//    fill(200, 255, 255);
//    rect(xSquare[squarenum], ySquare[squarenum], 20, 20);
//    ySquare[squarenum] -= dySquare;
//    if (ySquare[squarenum] == -20)
//      squarenum ++;

