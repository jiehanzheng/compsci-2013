/* @pjs globalKeyEvents="true"; */

int numLines = 6;
int lineSpacing = 40;
int vertMargin = 20;
int sideMargin = 20;
color hitColor = color(255, 0, 0);
color missColor = color(0, 0, 255);
ArrayList<Needle> needleList = new ArrayList<Needle>();


void setup()
{
  size(500, 500);
  for (int i = 0; i < 20; i++)
    needleList.add(new Needle());
}


void draw()
{
  background(200);
  drawGrid();
  int hitCount = 0;
  for (Needle n: needleList)
  {
    if (n.crossesLine())
      stroke(hitColor);
    else
      stroke(missColor);
    n.drawNeedle();
    if (n.crossesLine())
    hitCount++;
  }
  fill(0);
  text(hitCount+" hits in "+needleList.size(),20,height-20);
}

void drawGrid()
{
  stroke(0);
  for (int i = 0; i < numLines; i++)
  {
    line(sideMargin, vertMargin+i*lineSpacing, width-sideMargin, vertMargin + i*lineSpacing);
  }
}


void mouseClicked()
{
  addNeedles(20,false);
}

void addNeedles(int howMany, boolean clearFirst)
{
  if (clearFirst)
      needleList.clear();
  for (int i = 0; i < howMany; i++)
    needleList.add(new Needle());
}


class Needle
{
  float myX, myY, myEndX, myEndY, myTheta, localY;
  float needleLength = lineSpacing;
  boolean isHit;

  Needle()
  {
    localY = random(lineSpacing);
    myTheta = random(0, PI/2);
    if (localY-needleLength*sin(myTheta)<0)//lineSpacing)
      isHit = true;
    else
      isHit = false;
    myX = random(sideMargin+needleLength, width-sideMargin-2*needleLength);
    myY = localY+(int)(1+random(numLines-2))*lineSpacing+vertMargin;
    myEndX = myX + needleLength*cos(myTheta);
    myEndY = myY - needleLength*sin(myTheta);
  }

  void drawNeedle()
  {
//    ellipse(myX, myY, 3, 3);
    line(myX, myY, myEndX, myEndY);
  }

  boolean crossesLine()
  {
    return isHit;
  }
}


