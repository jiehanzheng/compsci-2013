/*
TODO:
 
 
 */


import java.util.HashMap;
ChompGraph g = new ChompGraph();

boolean player1 = true;
final int START = 0;  // Startup screen
final int INPLAY = 1;
final int GAMEOVER = 2;
int gameStatus = START;

color p1Color = color(255, 0, 0); 
color p2Color = color(0, 0, 255);
WidgetManager bm;
MyButton startGameButton;
AdjustInt vertexAdjuster;
AdjustInt edgeAdjuster;
//MyCheckBox treeCheckBox;
MyCheckBox cycleAllowedCheckBox;

void setup()
{
  size(500, 500);
  player1 = true;
  bm = new WidgetManager();
  startGameButton = new MyButton(width/2-40, height/2-10, 80, 20, "Start game!");
  bm.add(startGameButton);
  vertexAdjuster = new AdjustInt(width/2-40, height/2-10-100, 80, 20, "Vertices", 8);  // If change this, fix Adjuster MinMax
  bm.add(vertexAdjuster);
  edgeAdjuster = new AdjustInt(width/2-40, height/2-10-50, 80, 20, "Edges", 6);
  bm.add(edgeAdjuster);
  cycleAllowedCheckBox = new MyCheckBox(width/2-10, height/2-10-150, 20, 20, "Allow cycles", false); // If change this, fix Adjuster MinMax
  bm.add(cycleAllowedCheckBox);
  vertexAdjuster.setMinMax(1, 20);
  edgeAdjuster.setMinMax(0, 8-1);
}


void makeRandomGraph(int numVertices, int numEdges, boolean cycleAllowed)
{
  g.clear();
  char ch = 'A';
  for (int i = 0; i < numVertices; i++)
  {
    g.addVertex(new Vertex(ch+""));
    ch++;
  }

  for (int i = 0; i < numEdges; i++)
  {
    g.addRandomEdge(cycleAllowed);
  }
}

void makeCompleteGraph(int numVertices)
{
  for (int i = 0; i < numVertices; i++)
  {
    for (int j = i+1; j < numVertices; j++)
    {
      Vertex e1 =g.getVertex((char)('A'+i)+"");
      Vertex e2 =g.getVertex((char)('A'+j)+"");
      g.addEdge(e1, e2);
    }
  }
}

void draw()
{
  background(200);
  bm.drawButtons();

  switch (gameStatus)
  {
  case START:
    String msg = "Chomp The Graph!";
    text(msg, width/2-textWidth(msg)/2, 30);
    break;
  case INPLAY: 
    drawGameBoard();
    break;
  case GAMEOVER:
    drawGameOverScreen();
    break;
  }
}

void drawGameOverScreen()
{

  String msg;
  if (player1)
  {
    msg ="Player 1 wins!";
    fill(p1Color);
  } 
  else
  {
    msg = "Player 2 wins!";
    fill(p2Color);
  }
  text(msg, width/2-textWidth(msg)/2, 30);
  //      msg = "Click again to restart";
  //      text(msg, width/2-textWidth(msg)/2, height/2+30);
}


void drawGameBoard()
{
  //  background(200);
  g.draw(false);


  String msg;
  if (player1)
  {
    msg ="Player 1 turn";
    fill(p1Color);
  } 
  else
  {
    msg = "Player 2 turn";
    fill(p2Color);
  }
  text(msg, width/2-textWidth(msg)/2, 30);
}


void mouseDragged()
{
  mouseMoved();
}

void mouseMoved()
{
  bm.handleMouseMove(mouseX, mouseY);
  Object x = g.getNearObject(mouseX, mouseY);
  g.setSelected(x);
}

void mouseClicked()
{
  if (bm.handleMouseClicked(mouseX, mouseY))
    return;
  //  if (gameStatus == GAMEOVER)
  //  {
  //    makeRandomGraph(5, 6); 
  //    player1 = true;
  //    gameStatus = INPLAY;
  //    startGameButton.setEnabled(false);
  //    vertexAdjuster.setEnabled(false);
  //    
  //    return ;
  //  }

  boolean goodPlay = g.removeSelected();

  if (g.getNumVertices() == 0)
  {
    gameStatus = GAMEOVER;
    startGameButton.setEnabled(true);
    vertexAdjuster.setEnabled(true);
    edgeAdjuster.setEnabled(true);
    cycleAllowedCheckBox.setEnabled(true);
  }     
  else if (goodPlay)
  {
    player1 = !player1;
    if (player1)
      g.setHighlightColor(p1Color);
    else
      g.setHighlightColor(p2Color);
  }
}

void makeSampleGraph()
{
  g.clear();
  char ch = 'A';
  for (int i = 0; i < 4; i++)
  {
    g.addVertex(new Vertex(ch+""));
    ch++;
  }

  Vertex eA =g.getVertex("A");
  Vertex eB =g.getVertex("B");
  Vertex eC =g.getVertex("C");
  Vertex eD =g.getVertex("D");
  g.addEdge(eA, eB);
  g.addEdge(eC, eD);
  g.addEdge(eA, eD);
}



void buttonClicked(Object source)
{
  if (source == startGameButton)
  {
    makeRandomGraph(vertexAdjuster.getValue(), edgeAdjuster.getValue(), cycleAllowedCheckBox.getValue());

    player1 = true;
    g.setHighlightColor(p1Color);
    gameStatus = INPLAY;
    startGameButton.setEnabled(false);
    vertexAdjuster.setEnabled(false);
    edgeAdjuster.setEnabled(false);
    cycleAllowedCheckBox.setEnabled(false);
  }
  else if (source == vertexAdjuster || source == cycleAllowedCheckBox)
  {
    int V = vertexAdjuster.getValue();
    if (cycleAllowedCheckBox.getValue()==true)
      edgeAdjuster.setMinMax(0, V*(V-1)/2);
    else
      edgeAdjuster.setMinMax(0, V-1);
  }
}



//=================================================================

class ChompGraph 
{
  ArrayList<Vertex> vList = new ArrayList<Vertex>();
  ArrayList<Edge> eList = new ArrayList<Edge>();
  HashMap<Vertex, PVector> locMap = new HashMap<Vertex, PVector>();
  Object currHighlight = null;
  color highlightColor = color(255, 0, 0);
  int vertexRadius = 15; 

  void clear()
  {
    vList.clear();
    eList.clear();
    locMap.clear();
    currHighlight = null;
  }


  void setSelected(Object x)
  {
    currHighlight = x;
  }

  boolean removeSelected()
  {
    if (currHighlight == null)
      return false;
    else
    {
      if (currHighlight instanceof Vertex)
        removeVertex((Vertex)currHighlight);
      else
        removeEdge((Edge)currHighlight);
      return true;
    }
  }

  void showConnected()
  {
    boolean doOne = false;

    if (doOne)
    {

      Vertex v1 = vList.get(0);
      Vertex v2 = vList.get(1);

      println(v1+"-"+v2+""+connected(v1, v2));
      return;
    }


    for (int i = 0; i < vList.size(); i++)
    {
      for (int j = i+1; j< vList.size(); j++)
      {
        Vertex v1 = vList.get(i);
        Vertex v2 = vList.get(j);

        println(v1+"-"+v2+""+connected(v1, v2)+ "   " + connected(v2, v1));
      }
    }
  }





  void addVertex(Vertex v)
  {
    vList.add(v);
    updateLocations();
  }

  int getNumVertices()
  {
    return vList.size();
  }

  void addRandomEdge(boolean cycleAllowed)
  {
    int V = vList.size();
    int E = eList.size();
    if (2*E == V*(V-1) || (!cycleAllowed && V == E+1))
    {
      println("Already complete!");
      return;
    }

    while (true)
    {
      int v1 = (int) (Math.random()*vList.size());
      int v2 = (int) (Math.random()*vList.size());
      if (cycleAllowed || !connected(vList.get(v1), vList.get(v2)))
        if (addEdge(vList.get(v1), vList.get(v2)) == true)
          break;
    }
  }

  ArrayList<Edge> copyEdgeList(ArrayList<Edge> source)
  {
    ArrayList<Edge> dest = new ArrayList<Edge>();
    for (Edge e: source)
      dest.add(e);
    return dest;
  }


  boolean connected(Vertex v1, Vertex v2)
  {

    return connectedAux(v1, v2, copyEdgeList(eList));
  }

  boolean connectedAux(Vertex fromV, Vertex toV, ArrayList<Edge> temp)
  {
    if (fromV==toV)
      return true;
    for (int i = 0; i < temp.size(); )
    {
      Edge e = temp.get(i);
      if (e.getV1() == fromV)
      {
        Edge eee = temp.remove(i);
        if (connectedAux(e.getV2(), toV, copyEdgeList(temp)))
          return true;
      }
      else 
        if (e.getV2() == fromV)
      {
        Edge eee = temp.remove(i);
        if (connectedAux(e.getV1(), toV, copyEdgeList(temp)))
          return true;
      }
      else 
        i++;
    }
    return false;
  }





  boolean addEdge(Vertex v1, Vertex v2)
  {
    if (v1 != null && v2!=null)
    {
      // Check if edge already present
      for (Edge e:eList)
      {
        if ((e.getV1()==v1 && e.getV2() == v2)
          ||
          (e.getV1()==v2 && e.getV2() == v1))
        {
          return false;
        }
      }

      // Check if edge is a loop
      if (v1 == v2)
        return false;

      eList.add(new Edge(v1, v2));
      return true;
    }

    else
      return false;
  }

  boolean removeEdge(Edge target)
  {
    for (Edge e: eList)
    {
      if (e == target)
      {
        eList.remove(e);
        return true;
      }
    }
    return false;
  }

  boolean removeConnectedEdges(Vertex target)
  {
    int startSize = eList.size();
    for (int i = 0; i < eList.size(); )
    {
      Edge e = eList.get(i);
      if (e.getV1() == target || e.getV2() == target)
      {
        eList.remove(i);
      }
      else
        i++;
    }
    return eList.size() != startSize;
  }

  boolean removeVertex(Vertex target)
  {
    for (Vertex v: vList)
    {
      if (v == target)
      {
        vList.remove(v);
        removeConnectedEdges(v);
        return true;
      }
    }
    return false;
  }

  Vertex getVertex(String name)
  {
    for (Vertex v:vList)
    {
      if (v.toString().equals(name))
        return v;
    }
    return null;
  }

  void updateLocations()
  {
    locMap.clear();
    float radius = width*0.8/2;
    float cx = width/2.0;
    float cy = height/2.0;
    float angle = 0;
    for (int i = 0; i < vList.size(); i++)
    {
      float xLoc = cx + radius*cos(angle);
      float yLoc = cy + radius*sin(angle);
      locMap.put(vList.get(i), new PVector(xLoc, yLoc));
      angle += 2*PI/vList.size();
    }
  }

  void setHighlightColor(color c)
  {
    highlightColor = c;
  }

  void draw(boolean showLabels)
  {
    for (int i = 0; i < eList.size(); i++)
    {
      Edge e = eList.get(i);

      PVector loc1 = locMap.get(e.getV1());
      PVector loc2 = locMap.get(e.getV2());
      stroke(0);
      strokeWeight(2);
      fill(0);
      if (currHighlight == e || currHighlight == e.getV1() || currHighlight == e.getV2())
        stroke(highlightColor);
      line(loc1.x, loc1.y, loc2.x, loc2.y);
    }

    for (int i = 0; i < vList.size(); i++)
    {
      if (currHighlight == vList.get(i))
        fill(highlightColor);
      else
        fill(255);
      stroke(0);
      PVector location = locMap.get(vList.get(i));
      ellipse(location.x, location.y, vertexRadius, vertexRadius);
      if (showLabels)
      {
        fill(0);
        text(vList.get(i)+"", location.x+vertexRadius, location.y+vertexRadius);
      }
    }
  }

  Object getNearObject(float x, float y)
  {
    PVector mouseLoc = new PVector(x, y);
    for (int i = 0; i < vList.size(); i++)
    {
      Vertex v = vList.get(i);
      PVector d = PVector.sub(locMap.get(v), mouseLoc);
      if (d.mag()<vertexRadius)
        return v;
    }

    for (Edge e:eList)
    {
      PVector d1 = locMap.get(e.getV1());
      PVector d2 = locMap.get(e.getV2());
      float distance = getDistanceToSegment(d1, d2, mouseLoc);
      if (distance < 5 && distance >= 0)
        return e;
    }
    return null;
  }

  private float getDistanceToSegment(PVector v, PVector w, PVector p) 
    /*
  Taken from here, but a lovely use of vectors!
     http://stackoverflow.com/questions/849211/shortest-distance-between-a-point-and-a-line-segment
     */
  {
    v = new PVector(v.x, v.y);
    w = new PVector(w.x, w.y);
    p = new PVector(p.x, p.y);
    PVector segment = PVector.sub(w, v);
    float len2 = segment.dot(segment); // ||segment||^2
    if (len2 == 0.0) 
    {
      return PVector.sub(p, v).mag(); //  distance(p, v);   // v == w case
    }

    float t = PVector.sub(p, v).dot(segment) / len2;
    if (t < 0.0 || t > 1.0)
    {
      return -1;       // Outside the extend of the segment
    }
    PVector projection = PVector.add(v, PVector.mult(segment, t));  // Projection falls on the segment
    return PVector.sub(p, projection).mag(); // distance(p, projection);
  }
}
//============================================================
class Vertex
{
  String myLabel;

  Vertex(String label)
  {
    myLabel = label;
  }

  String toString()
  {
    return myLabel;
  }
}
//=============================================================
class Edge
{
  Vertex myV1, myV2;

  Edge(Vertex v1, Vertex v2)
  {
    myV1 = v1;
    myV2 = v2;
  }

  Vertex getV1()
  {
    return myV1;
  }

  Vertex getV2()
  {
    return myV2;
  }
}

/*
TODO:
 Call-back function, interface, for buttons?
 Nicer display!
 
 */

class WidgetManager
{
  ArrayList<Widget> bList = new ArrayList<Widget>();

  void add(Widget b)
  {
    bList.add(b);
  }

  void drawButtons()
  {
    for (Widget b: bList)
      b.handleDraw();
  }

  void handleMouseMove(float mX, float mY)
  {
    for (Widget b: bList)

      b.handleMouseMove(mX, mY);
  }

  boolean handleMouseClicked(float mX, float mY)
  {

    for (Widget b: bList)
    {
      if (b.handleMouseClicked(mX, mY) == true)
        return true;
    }         

    return false;
  }
}

//=============================================================
abstract class Widget
{

  boolean enabled = true;

  final void setEnabled(boolean b)
  {
    enabled = b;
  }

  final boolean getEnabled()
  {
    return enabled;
  }

  abstract void handleDraw();
  abstract void handleMouseMove(float mX, float mY);
  abstract boolean handleMouseClicked(float mX, float mY);
}





class MyButton extends Widget
{
  float myX, myY, myW, myH;
  String myS;
  boolean mouseOverMe = false;
  //  boolean enabled = true;

  MyButton(float x, float y, float w, float h, String s)
  {
    myX = x;
    myY = y;
    myW = w;
    myH = h;
    myS = s;
  }


  void handleDraw()
  {
    if (!getEnabled()) return;
    if (mouseOverMe == true)
      fill(200);
    else
      fill(220);
    rect(myX, myY, myW, myH);
    fill(0);
    float mySWidth =textWidth(myS);
    text(myS, myX+myW/2-mySWidth/2, myY+myH/2+6);
  }

  void handleMouseMove(float mX, float mY)
  {
    if (!enabled) return;
    if (mX > myX && mX < myX + myW && mY > myY && mY < myY+myH)
      mouseOverMe = true;
    else
      mouseOverMe = false;
  }

  boolean handleMouseClicked(float mX, float mY)
  {
    if (!enabled) return false;
    if (mX > myX && mX < myX + myW && mY > myY && mY < myY+myH)
    {
      buttonClicked(this);
      return true;
    }
    else
      return false;
  }

  String getText()
  {
    return myS;
  }
}


class MyCheckBox extends Widget
{
  boolean myDataValue;
  float myX, myY, myW, myH;
  String myS;

  MyCheckBox(float x, float y, float w, float h, String s, boolean startVal)
  {
    myX = x;
    myY = y;
    myW = w;
    myH = h;
    myS = s;
    myDataValue = startVal;
  }

  void handleDraw()
  {
    if (!enabled) return;
    strokeWeight(1);
    fill(255);
    stroke(0);
    rect(myX, myY, myW, myH);
    fill(0);
    if (myDataValue == true)
    {
      line(myX, myY, myX+myW, myY+myH);
      line(myX, myY+myH, myX+myW, myY);
    }
    ;    
    //    text(myDataValue+"", myX+myW/2-textWidth(myDataValue+"")/2, myY+myH/2+5);

    text(myS, myX+myW/2-textWidth(myS)/2, myY-2);
  }


  boolean handleMouseClicked(float mX, float mY)
  {
    if (!enabled) return false;
    if (mX >= myX && mX <= myX+myW && mY >= myY && mY <= myY+myH)
    {
      myDataValue = !myDataValue;
      buttonClicked(this);
      return true;
    }
    return false;
  }


  void handleMouseMove(float mX, float mY)
  {
  }

  boolean getValue()
  {
    return myDataValue;
  }
}


class AdjustInt extends Widget
{
  MyButton upButton, downButton;
  int myDataValue;
  int myMin, myMax;
  float myX, myY, myW, myH;
  String myS;


  AdjustInt(float x, float y, float w, float h, String s, int startVal)
  {
    myX = x;
    myY = y;
    myW = w;
    myH = h;
    myS = s;
    myDataValue = startVal;
    downButton = new MyButton(x, y, w/3, h, "<");
    upButton = new MyButton(x+2*w/3, y, w/3, h, ">");
    myMin = 0;
    myMax = 10;
  }

  void setMinMax(int low, int high)
  {
    myMin = low;
    if (myDataValue < low)
      myDataValue = low;

    myMax = high;
    if (myDataValue > high)
      myDataValue = high;
  }


  void handleDraw()
  {
    if (!enabled) return;
    downButton.handleDraw();
    upButton.handleDraw();
    strokeWeight(1);
    fill(255);
    stroke(0);
    rect(myX+myW/3, myY, myW/3, myH);
    fill(0);
    text(myDataValue+"", myX+myW/2-textWidth(myDataValue+"")/2, myY+myH/2+5);

    text(myS, myX+myW/2-textWidth(myS)/2, myY-2);
  }

  boolean handleMouseClicked(float mX, float mY)
  {
    if (!enabled) return false;
    boolean handled = false;
    if (mY > myY && mY < myY+myH)
    {
      if (mX > myX && mX < myX+myW/3 && myDataValue > myMin)
      {
        myDataValue--;
        handled = true;
      }
      if (mX > myX+2*myW/3 && mX < myX+myW && myDataValue < myMax)
      {
        myDataValue++;
        handled = true;
      }
      if (mX > myX && mX < myX+myW)
        handled = true;
    }

    if (handled)
      buttonClicked(this);
    return handled;
  }

  int getValue()
  {
    return myDataValue;
  }

  void handleMouseMove(float x, float y)
  {
    upButton.handleMouseMove(x, y);
    downButton.handleMouseMove(x, y);
  }
}




class MyLabel extends Widget
{
  float myX, myY, myW, myH;
  String myS;

  MyLabel(float x, float y, float w, float h, String s)
  {
    myX = x;
    myY = y;
    myW = w;
    myH = h;
    myS = s;
  }

  void handleDraw()
  {
    if (!getEnabled())
      return;

    rect(myX, myY, myW, myH);
    fill(0);
    float mySWidth =textWidth(myS);
    text(myS, myX+myW/2-mySWidth/2, myY+myH/2+6);
  }



  void handleMouseMove(float mX, float mY)
  {
  }

  boolean handleMouseClicked(float mX, float mY)
  {
    return false;
  }
}


