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

