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

