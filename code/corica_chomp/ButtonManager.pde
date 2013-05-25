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

