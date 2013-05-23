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
