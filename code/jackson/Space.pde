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

