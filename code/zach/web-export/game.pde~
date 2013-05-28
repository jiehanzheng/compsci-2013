//int[] weapons = new int[100];
Class sword = Sword.class;
Class axe = Axe.class;
Class bow = Bow.class;
Class lance = Lance.class;
Class claw = Claw.class;
Class item = Item.class;
Class weapon = Weapon.class;
Class Inventory = inventory.class;
//float accuracy;
//float accuracychance;
//int avoid;
//int critbonus = 1;
//float critchance;
//int attackerstr = 5;
//int defenderdef= 0;
//int defenderhealth = 20;
//int userrange = 6;
//int damage;
int found;
int mode =1;
int searcher =0;

int cursorx = 10;
int cursory = 10;
int windowsize = 600;
boolean select = false;
int holder = 0;
int[][] coordinates;
int mov;
int charbase[][]=new int[70][33];
int which;
int turn = 1;
Characters[] people;
int spotx;
int spoty;
int displayaccuracy;
int displaycritbonus;
int displayavoid;
int displaydamage;
int displaydoublehit;



//int altdisplayaccuracy;
//int altdisplaycritbonus;
//int altdisplayavoid;

void setup() {
  size(600, 600);
  coordinates = new int[40][40];
  people = new Characters[30]; 
  background(255);
  coordinates[5][5] = 1;
  coordinates[18][12] = 2;
  coordinates[17][14] =3;
  coordinates[3][9] =4;
  coordinates[4][7] =5;
  coordinates[16][14]=6;
  coordinates[2][3]=7;
  coordinates[16][13]=8;
  coordinates[18][13]=9;
  coordinates[4][9]=10;
  coordinates[2][4]=11;
  coordinates[19][13]=12;
  for (int i=0; i<30; i++) { 
    people[i] = new Characters("good","", sword);//leave first blank for empty spaces
  }
  people[1] = new Entombed();
  people[2] = new Lord();
  people[3] = new Archer();
  people[4] = new Revenant();
  people[5] = new Revenant();
  people[6] = new Cavalier();
  people[7] = new Cyclops();
  people[8] = new Knight();
  people[9] = new Nomad();
  people[10]= new Revenant();
  people[11]= new Cyclops();
  people[12]= new Nomad();

  people[1].stuff[0] = rottenclaw();
  people[2].stuff[0] = killingedge();
  people[2].stuff[1] = shamsher();
  people[2].stuff[2] = ironblade();
  people[3].stuff[0] = ironbow();
  people[3].stuff[1] = longbow();
  people[4].stuff[0] = sharpclaw();
  people[5].stuff[0] = sharpclaw();
  people[6].stuff[0] = ironblade();
  people[6].stuff[1] = ironlance();
  people[7].stuff[0] = ironaxe();
  people[7].stuff[1] = handaxe();
  people[8].stuff[0] = javelin();
  people[8].stuff[1] = steellance();
  people[9].stuff[0] = ironbow();
  people[9].stuff[0] = shortbow();
  people[10].stuff[0] =  sharpclaw();
  people[11].stuff[0] =  ironaxe();
  people[11].stuff[1] =  steelaxe();
  people[12].stuff[0] =  ironbow();
  people[12].stuff[1] = shamsher();
  
    for (int i=0; i<30; i++) { 
    people[i].turnend();//leave first blank for empty spaces
  }
  for (int i=0; i<20; i++) {
    for (int w=0; w<20; w++) {
      if (coordinates [i][w] > 0) {
        int which = coordinates[i][w]; 
        people[which].setlocation(i, w);
      }
    }
  }
}

void draw() {

  rectMode(CENTER);
  background(255);
  drawselected();
  cursoractions();
  for (int i=0; i<30; i++) { 
    people[i].drawme();
  }
  grid();
  bottombar();
}

void keyPressed()
{
  if (key ==CODED) {
    if (keyCode == SHIFT)
    {
      if ( coordinates[cursorx][cursory] > 0)
      {
        if (turn == 1)
        {
          if ( people[coordinates[cursorx][cursory]].myside.equals("good")) 
          {
            mode = mode*-1;
            searcher = 0;
          }
        }
        else 
        {
          if ( people[coordinates[cursorx][cursory]].myside.equals("evil"))
          {
            mode = mode*-1;
            searcher = 0;
          }
        }
      }
    }
    if ( mode ==1)
    {
      if (keyCode == UP)
      {
        cursory = cursory-1;
      }
      if (keyCode == DOWN) 
      {
        cursory = cursory+1;
      }
      if (keyCode == LEFT)
      {
        cursorx = cursorx-1;
      }
      if (keyCode == RIGHT) 
      {
        cursorx = cursorx+1;
      }
    }
    else 
      if (keyCode == LEFT)
    {
      if (searcher > 0)
      {
        searcher = searcher-1;
      }
    }
    if (keyCode == RIGHT) 
    {
      if (searcher < 4)
      {
        searcher = searcher+1;
      }
    }
  }
  if (mode ==1)
  {
    if (key == 'z') 
    {

      select = true;
      movement();
    }
    else if (key == 'c')
    {
      for (int i = 0; i<30; i++)
      {
        people[i].turnend();
      }
      turn=turn*-1;

      holder=0;
      spotx = 0;
      spoty = 0;
    }
    else if (key == 'x')
    {

      select = false;
      holder=0;
    }
  }
  else
  {
    if (key == 'z') 
    {
      people[coordinates[cursorx][cursory]].shiftinv(searcher);
      searcher = 0;
    }
  }
}

//functions


void grid()
{
  for (int i = 0; i<= width; i=i+(windowsize/20)) { //grid
    line(0, i+15, width, i+15);
    line(i+15, 0, i+15, height);
  }
  rectMode(CORNER);
  noStroke();
  fill(255, 255, 255);
  rect(0, 0, 15, width);
  rect(0, 0, width, 15);
  rect(width+1, 0, -15, width);
  rect(width, 1+ windowsize- 120 - 15, -width, width);
  stroke(0);
}

void cursoractions() {
  if (turn == -1)
  {
    fill(150, 0, 0, 150);
  }
  else
  {
    fill(0, 0, 150, 150);
  }

  if (cursorx > 19) {
    cursorx = 19;
  }
  else if (cursorx < 1) {
    cursorx = 1;
  }
  else if (cursory > 15) {
    cursory = 15;
  }
  else if (cursory < 1) {
    cursory = 1;
  }
  rect(cursorx*30, cursory*30, 30, 30);
}

void movement() 
{
  if (holder ==1)
  {
    //println(1);
    if (select==true)
    {
      // println(2);
      if (coordinates[cursorx][cursory] > 0)
      {
        found = coordinates[cursorx][cursory];
        if (people[mov].battled == false)
        {
          people[mov].battle(people[found]);
        }
      }
      else
      { 
        if (abs(people[mov].getx() - cursorx) + abs( people[mov].gety() - cursory) <= people[mov].getmoves())
        {
          holder=0;
          
          select=false;
          people[mov].moved(abs(people[mov].getx()-cursorx)+abs(people[mov].gety()-cursory));
          people[mov].setlocation(cursorx,cursory);
        }
        else 
        {
          //println(7);
        }
      }
    }
    holder = 0;
    select = false;
  }


  else 
  {
    if (select == true) 
    {
      if (coordinates[cursorx][cursory] > 0) 
      {
        if (turn == 1)
        {
          if ( people[coordinates[cursorx][cursory]].myside.equals("good")) 
          {
            holder =1;
            mov = coordinates[cursorx][cursory];

            select = false;
            spoty = cursory;
            spotx = cursorx;
          }
        }
        else 
        {
          if ( people[coordinates[cursorx][cursory]].myside.equals("evil"))
          {
            holder = 1;
            mov = coordinates[cursorx][cursory];
            select = false;

            spoty = cursory;
            spotx = cursorx;
          }
        }
      }
    }
  }


  for (int i=0; i<20; i++) 
  {
    for (int w=0; w<20; w++) 
    {
      if (coordinates[i][w] > 0)
      {
        coordinates[i][w]= 0;
      }
    }
  }
  for(int i = 1; i< 30; i++)
  {
    coordinates[people[i].getx()][people[i].gety()] = i;
  }
}

void bottombar() 
{
  int row1 = 16;
  int row2 = 60;
  int row3 = 140;
  int row4 = 250;
  int row5 = 320;
  rectMode(CORNER);
  fill(255);
  rect(0, 480, width, 120);
  if (mode != 1)
  {
    fill(180, 19, 10, 50);
    if (searcher >0)
    {   
      rect(row5 - 10, 485+searcher*15, 90, 15);
    }
    else
    {
      rect(row4 -5, 485, 70, 15);
    }
  }
  fill(10, 135, 70);



  //character stats
  text("str " + people[coordinates[cursorx][cursory]].getstrength(), row1, 515);
  text("skl " + people[coordinates[cursorx][cursory]].getskill(), row1, 530);
  text("spd " + people[coordinates[cursorx][cursory]].getspeed(), row1, 545);
  text("def " + people[coordinates[cursorx][cursory]].getdefence(), row1, 560);
  text("res " + people[coordinates[cursorx][cursory]].getresistance(), row1, 575);
  text("luck " + people[coordinates[cursorx][cursory]].getluck(), row1, 590);
  text("might " + people[coordinates[cursorx][cursory]].might(), row2, 515);
  text("accuracy " + people[coordinates[cursorx][cursory]].acc(), row2, 530);
  text("avoid " + people[coordinates[cursorx][cursory]].avo(), row2, 545);
  text("crit " + people[coordinates[cursorx][cursory]].critrate(), row2, 560);
  text("lvl " + people[coordinates[cursorx][cursory]].getlevel(), row2, 575);
  text("xp " + people[coordinates[cursorx][cursory]].getxp(), row2, 590);

  //weapons///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  text("range " + people[coordinates[cursorx][cursory]].Weaponrange(), row4, 515);
  text("weight " + people[coordinates[cursorx][cursory]].Weaponweight(), row4, 530);
  text("might " + people[coordinates[cursorx][cursory]].Weaponmight(), row4, 545);
  text("critical " + people[coordinates[cursorx][cursory]].Weaponcritical(), row4, 560);
  text("hit " + people[coordinates[cursorx][cursory]].Weaponhit(), row4, 575);
  text(people[coordinates[cursorx][cursory]].stuff[1].name, row5, 515);
  text(people[coordinates[cursorx][cursory]].stuff[2].name, row5, 530);
  text(people[coordinates[cursorx][cursory]].stuff[3].name, row5, 545);
  text(people[coordinates[cursorx][cursory]].stuff[4].name, row5, 560);
  ///////////////////////////////////////////////////////////////////////////////////////

  fill(100, 0, 120);
  text("battle stats:", row3, 500);
  text("Inventory:", row5, 500);
  text(people[coordinates[cursorx][cursory]].stuff[0].name, row4, 500);
  text(people[coordinates[cursorx][cursory]].iam()+":", row1, 500 );
  //////////////////////////////////////////////////////////////////////////////////////////////

  displayaccuracy= people[mov].battleaccuracy(people[coordinates[cursorx][cursory]]);
  displaycritbonus= people[mov].battlecrit(people[coordinates[cursorx][cursory]]); 
  displaydamage=  people[mov].battledamage(people[coordinates[cursorx][cursory]], 1); 

  if (people[mov].isuseable(people[mov].stuff[0]))
  {
    if (holder ==1)
    {
      if (turn == -1)
      {
        fill(255, 0, 0);
      }
      else
      {
        fill(0, 0, 255);
      }
      text("damage " + displaydamage, row3, 545);
      text("critical " + displaycritbonus, row3, 515);
      text("accuracy " + displayaccuracy, row3, 530);
      if (people[mov].doublehit(people[coordinates[cursorx][cursory]]))
      {
        text("x2", row3, 560);
      }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////
    displayaccuracy= people[coordinates[cursorx][cursory]].battleaccuracy(people[mov]);
    displaycritbonus= people[coordinates[cursorx][cursory]].battlecrit(people[mov]); 
    displaydamage=  people[coordinates[cursorx][cursory]].battledamage(people[mov], 1); 

    if (holder ==1)
    {
      if (turn == 1)
      {
        fill(255, 0, 0);
      }
      else
      {
        fill(0, 0, 255);
      }
      text("to " + displaydamage, row3+75, 545);
      text("to " + displaycritbonus, row3+75, 515);
      text("to " + displayaccuracy, row3+75, 530);
      if (people[coordinates[cursorx][cursory]].doublehit(people[mov]))
      {
        text("x2", row3+75, 560);
      }
    }
  }
}

void drawselected()
{
  if (holder == 1)
  {
    people[mov].select();
    fill(0, 0, 0, 100);
  }
  else
  {
    people[mov].deselect();
    fill(255, 255, 255, 100);
  }
  rect(spotx*30, spoty*30, 30, 30);
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


abstract class Infantrymen extends Characters
{
  Infantrymen(String me, String name2, Class first)
  {
    super(me, name2, first);
  }
  Infantrymen(String me, String name2, Class first, Class second)
  {
    super(me, name2, first, second);
  }
  Infantrymen(String me, String name2, Class first, Class second, Class third)
  {
    super(me, name2, first, second, third);
  }
}

class Fighter extends Infantrymen
{
  Fighter()
  {
    super("good","Fighter", axe);
    health = 20;
    strength= 5;
    skill = 4;
    speed = 4;
    con = 11;
    defence = 2;
    resistance = 0;
    movement = 5;
    luck = 2;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 85;
    growstrength = 55;
    growskill = 35;
    growspeed = 30;
    growluck = 15;
    growdefence = 15;
    growresistance = 15;
    growmovement = 0;
    stuff[0] = ironaxe();
    moves = movement;
  }
}

class Archer extends Infantrymen
{
  Archer()
  {
    super("good","Archer", bow);
    health = 18;
    strength= 4;
    skill = 3;
    speed = 3;
    con = 7;
    defence = 3;
    resistance = 0;
    movement = 5;
    luck = 5;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 70;
    growstrength = 35;
    growskill = 40;
    growspeed = 32;
    growluck = 35;
    growdefence = 15;
    growresistance = 15;
    growmovement = 0;
    moves = movement;
  }
}

class Nomad extends Infantrymen
{
  Nomad()
  {
    super("good","Nomad", bow);
    health = 16;
    strength= 5;
    skill = 4;
    speed = 5;
    con = 7;
    defence = 5;
    resistance = 0;
    movement = 7;
    luck = 2;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 60;
    growstrength = 30;
    growskill = 35;
    growspeed = 40;
    growluck = 30;
    growdefence = 15;
    growresistance = 20;
    growmovement = 0;
    moves = movement;
  }
}  

class Lord extends Characters
{
  Lord()
  {
    super("good","lord", sword);
    health = 18;
    strength= 6;
    skill = 6;
    speed = 7;
    con = 8;
    defence = 6;
    resistance = 0;
    movement = 5;
    luck = 5;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 80;
    growstrength = 55;
    growskill = 55;
    growspeed = 45;
    growluck = 50;
    growdefence = 35;
    growresistance = 25;
    growmovement = 0;
    moves = movement;  
    stuff[0] = ironsword();
    stuff[1] = killingedge();
  }
  
  Lord(String side)
  {
    super(side,"lord", sword);
    health = 18;
    strength= 6;
    skill = 6;
    speed = 7;
    con = 8;
    defence = 6;
    resistance = 0;
    movement = 5;
    luck = 5;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 80;
    growstrength = 55;
    growskill = 55;
    growspeed = 45;
    growluck = 50;
    growdefence = 35;
    growresistance = 25;
    growmovement = 0;
    moves = movement;
    stuff[0] = ironsword();
   stuff[1] = killingedge();   
  }
  //not finished implementing 
}

class Characters 
{
  String myside;
  int myx;
  int myy;
  int level;
  int xp;
  int currenthealth;
  int health;
  int strength;
  int skill;
  int speed;
  int con;
  int defence;
  int resistance;
  int movement= 0;
  int luck;
  int weaponlvl_1;
  int weaponlvl_2;
  int weaponlvl_3;
  int maxhealth;
  int maxstrength;
  int maxskill;
  int maxspeed;
  int maxcon;
  int maxdefence;
  int maxresistance;
  int maxmovement= 0;
  int maxluck;
  int growhealth;
  int growstrength;
  int growskill;
  int growspeed;
  int growluck;
  int growdefence;
  int growresistance;
  int growmovement= 0;
  int type;
  float rand;
  int moves;
  int prom;
  int xphold;
  int kill;
  int damagetaken;
  boolean battled;
  boolean isselected= false;
  boolean died = false;
  String myname;



//  Class hold;

  ArrayList<Class> useable;

  inventory[] stuff;
  inventory[] backup;
  ///////////////////////////////////////////

  Characters(String side, String name, Class first)
  {
    myname = name;
    useable = new ArrayList<Class>() ;
    useable.add(first);
    myside = side;
    stuff = new inventory[5];
    backup = new inventory[5];
    stuff[0] = new Item();
    stuff [1] = new Item();
    stuff[2] = new Item ();
    stuff[3] = new Item ();
    stuff[4] = new Item ();
    moves = movement;
    battled = false;
    level = 1;
    isselected =false;
  }

  Characters(String side, String name, Class first, Class second)
  {
    myname = name;
    useable = new ArrayList<Class>();
    useable.add(first);
    useable.add(second);
    myside = side;
    stuff = new inventory[5];
    backup = new inventory[5];
    stuff[0] = new Item();
    stuff [1] = new Item();
    stuff[2] = new Item ();
    stuff[3] = new Item ();
    stuff[4] = new Item ();
    moves = movement;
    battled = false;
    level = 1;
    isselected =false;
  }

  Characters(String side,String name, Class first, Class second, Class third)
  {
    myname = name;
    useable = new ArrayList<Class>() ;
    useable.add(first);
    useable.add(second);
    useable.add(third);
    myside = side;
    stuff = new inventory[5];
    backup = new inventory[5];
    stuff[0] = new Item();
    stuff [1] = new Item();
    stuff[2] = new Item ();
    stuff[3] = new Item ();
    stuff[4] = new Item ();
    moves = movement;
    battled = false;
    level = 1;
    isselected =false;
  }

String iam()
{
  return myname;
}
  boolean isuseable(inventory which)
  {
    for ( int i = 0; i < this.useable.size(); i++)
    {
      if ( which.checkme() == this.useable.get(i) )
      {
        return true;
      }
    }
    return false;
  }

  void drawme()//subject to change
  {
    if (died == false)
    {
      rectMode(CENTER);

      if (this.isselected == true)
      {
        for (int i = 0; i <= moves+Weaponrange() ; i++)
        {
          for (int j = 0; j<= moves+Weaponrange(); j++)
          {
            if (i+j > moves+Weaponrange())
            {
              break;
            }
            fill(0, 0, 100, 100);
            if (i+j >moves)
            {
              fill(100, 0, 0, 100);
            }

            if (j == 0 || i == 0)
            {
              rect((myx+j)*30, (myy+i)*30, 30, 30);
              rect((myx-j)*30, (myy-i)*30, 30, 30);
            }
            else
            {
              rect((myx+j)*30, (myy-i)*30, 30, 30);
              rect((myx-j)*30, (myy+i)*30, 30, 30);
              rect((myx+j)*30, (myy+i)*30, 30, 30);
              rect((myx-j)*30, (myy-i)*30, 30, 30);
            }
          }
        }
      }
      if (this.lifestatus() ==true)
      {
        if (myside.equals("good"))
        {
          fill(0, 0, 255);
        }
        else
        {
          fill(255, 0, 0);
        }
        ellipse(myx*30, myy*30, 10, 10);
        text(currenthealth, myx*30-5, myy*30-5);
        text(moves, myx*30-5, myy*30+15);
      }
      else
      {
        myx = 0;
        myy = 0;
        died = true;
      }
    }
  }

  void battle(Characters who)
  {
    if (this.inrange(who) == true)
    {
      this.attack(who);
      this.battled = true;
    }
    if (who.lifestatus() == true)
    {
      if ( who.inrange(this) == true )
      {
        who.attack(this);
      }
    }
    else
    {
      this.experience(who);
      return;
    }
    if ( this.doublehit(who) == true)
    {
      if (this.inrange(who) == true)
      {
        this.attack(who);
      }
    }
    if (this.battled == true)
    {
      this.experience(who);
      who.experience(this);
    }
  }

  void attack(Characters who) 
  {
    if (isuseable(this.stuff[0]) == true)
    {
      int accuracy = battleaccuracy(who);
      int accuracychance= (int)random(0, 99);
      int critchance=(int)random(0, 99);
      int critbonus = battlecrit(who);
      if (critbonus > critchance)
      {
        critbonus=3;
      }
      else
      {
        critbonus=1;
      }
      if (accuracy > accuracychance) { //hit=true
        who.currenthealth = who.currenthealth - battledamage(who, critbonus);
      }
      else 
      { //hit=false
        println("MISS!");
      }
      if (who.lifestatus()==false)
      {
        coordinates[who.getx()][who.gety()] = 0; //would like to change
      }
    }
  }

  int Weaponrange()
  {
    if (isuseable(stuff[0])==true)
      return ((Weapon) stuff[0]).getrange();
    else
      return 0;
  }
  int Weaponrank()
  {
    if (isuseable(stuff[0])==true)
      return ((Weapon) stuff[0]).getrank();
    else
      return 0;
  }

  int Weaponweight()
  {
    if (isuseable(stuff[0])==true)
      return ((Weapon) stuff[0]).getweight();
    else
      return 0;
  }

  int Weaponmight()
  {
    if (isuseable(stuff[0])==true)
      return ((Weapon) stuff[0]).getmighty();
    else
      return 0;
  }

  int Weaponhit() {
    if (isuseable(stuff[0])==true)
      return ((Weapon) stuff[0]).gethit();
    else
      return 0;
  }

  int Weaponcritical() {
    if (isuseable(stuff[0])==true)
      return ((Weapon) stuff[0]).getcritical();
    else
      return 0;
  }



  ///////////////////////////////////////////////////////////////////////
  void setlocation(int x, int y)
  {

    myx = x;
    myy = y;
  }
  ///////////////////////////////////////////////////////////////////////////

  boolean lifestatus()
  {
    if (currenthealth <= 0)
    {
      return false;
    }
    else
    {
      return true;
    }
  }

  void levelup(int times)
  {
    for (int i =0 ; i <times; i++)
    {
      if (level <21)
      {
        rand = random(0, 100);
        if ( growhealth > rand)
        {
          if (health < maxhealth)
          {
            health++;
            currenthealth++;
          }
        }
        rand = random(0, 100);
        if (strength > rand)
        {
          if (strength < maxstrength)
          {
            strength++;
          }
        }
        rand = random(0, 100);
        if (growskill > rand)
        {
          if (skill < maxskill)
          {
            skill++;
          }
        }
        rand = random(0, 100);

        rand = random(0, 100);
        if (growspeed  > rand)
        {
          if (speed < maxspeed)
          {
            speed++;
          }
        }
        rand = random(0, 100);
        if (growluck  > rand)
        {
          if (luck < maxluck)
          {
            luck++;
          }
        }
        rand = random(0, 100);
        if (growdefence > rand)
        {
          if (defence < maxdefence)
          {
            defence++;
          }
        }
        rand = random(0, 100);
        if (growresistance > rand)
        {
          if (resistance < maxresistance)
          {
            resistance++;
          }
        }
        level++;
      }
    }
  }

  void moved(int x)
  {
    moves= moves - x;
  }

  void turnend()
  {
    moves = movement;
    battled = false;
  }



  void experience(Characters whom)
  {
    if ( whom.lifestatus() == true)
    {
      kill = 0;
    }
    else
    {
      kill = 3;
    }
    if (level < 20)
    {
      xp = xp + (31 + (whom.level + whom.prom) - (this.level + this.prom))/ 3;
      xp = xp + (kill*(( whom.level*3 + whom.prom ) - ( this.level*3 + this.prom )/2 + 20) ) ;
      if (xp >100)
      {
        xphold = xp%100;
        xp= xp - xphold;
        xp = xp/100;
        levelup(xp);
        xp = xphold;
      }
      if (level >= 20)
      {
        xp = 0;
      }
    }
  }


  void shiftinv(int tofront)
  {
    arrayCopy(stuff, backup);

    for (int i = tofront; i > 0 ; i--)
    {
      stuff[i] = stuff[i-1];
    }
    stuff[0] = backup[tofront];
  }


  int battleaccuracy(Characters who)
  {
    int myacc = this.acc() + tridamage(who)- who.avo();
    if (myacc < 0)
      myacc= 0;
    return myacc;
  }

  int battlecrit(Characters who)
  {
    int crit = this.critrate() - who.getluck();
    if (crit < 0)
      crit = 0;
    return crit;
  }

  int battledamage(Characters who, int critbonus)
  {
    int damage = (this.might() + tridamage(who) - who.defence) * critbonus;
    if (damage < 0)
      damage = 0;

    return damage;
  }
  
  int tridamage(Characters who)
  {
    int bonus;
    if ((this.stuff[0] instanceof Sword && who.stuff[0] instanceof Lance)|| (this.stuff[0] instanceof Axe && who.stuff[0] instanceof Sword) || (this.stuff[0] instanceof Lance && who.stuff[0] instanceof Axe))
    {
      bonus = 15;
    }
    else if ((this.stuff[0] instanceof Sword && who.stuff[0] instanceof Axe)|| (this.stuff[0] instanceof Axe && who.stuff[0] instanceof Lance) || (this.stuff[0] instanceof Lance && who.stuff[0] instanceof Sword))
    {
      bonus = -15;
    }
    else 
    {
      bonus = 0;
    }
    return bonus;
  }

  int attackspeed()
  {
    int temp;
    temp = (this.Weaponweight() - this.getcon());
    if ( temp < 0)
      temp = 0;
    temp += this.getspeed();
    return temp;
  }

  int acc()
  {
    int temp= (this.Weaponhit() + this.getskill() + this.getskill() + this.getluck());
    if ( temp < 0)
      temp = 0;
    return temp;
  }

  int avo()
  {
    int temp = (this.getspeed() + this.getspeed() + this.getluck());
    if ( temp < 0)
      temp = 0;
    return temp;
  }

  int might()
  {
    int temp= (this.strength + this.Weaponmight());
    if ( temp < 0)
      temp = 0;
    return temp;
  }

  int critrate()
  {
    int temp = (this.Weaponcritical() + (this.getskill())/2);
    if ( temp < 0)
      temp = 0;
    return temp;
  }

  boolean doublehit(Characters who)
  {
    int chance = this.attackspeed()- who.attackspeed();
    if (chance > 3)
      return true;
    else 
      return false;
  }

  boolean inrange(Characters who)
  {
    if (abs(this.myx - who.myx) + abs(this.myy - who.myy) == this.Weaponrange())
      return true;
    else 
      return false;
  }
  void select(){
    this.isselected = true;
  }
  void deselect(){
    this.isselected= false;
  }
  
  
    ////////////////////////////get commands/////////////////////////



  int getprom()
  {
    return prom;
  }
  
  int getx() {
    return myx;
  }

  int gety() {
    return myy;
  }

  int gethealth() {
    return health;
  }
  int getcurrenthealth()
  {
    return currenthealth;
  }
  int getstrength()
  {
    return strength;
  }

  int getspeed() {
    return speed;
  }

  int getskill() {
    return skill;
  }

  int getxp() {
    return xp;
  }
  int getcon() {
    return con;
  }
  int getlevel() {
    return level;
  }
  int getmovement() {
    return movement;
  }
  int getdefence() {
    return defence;
  }
  int getresistance() {
    return resistance;
  }
  int getluck(){
    return luck;
  }
  int getmoves() {
    return moves;
  }
}

////////////////stats////////
///*
//
// Characters(int type, int life, int strn, int skl, int spd, int con, int def, int res, int mov, int luck)
// {
// charbase[type][0] = life;
// charbase[type][1] = strn;
// charbase[type][2] = skl;
// charbase[type][3] = spd;
// charbase[type][4] = con;
// charbase[type][5] = def;
// charbase[type][6] = res;
// charbase[type][7] = mov;
// charbase[type][8] = luck;
// charbase[type][9] = maxlife;
// charbase[type][10] = maxstrn;
// charbase[type][11] = maxskl;
// charbase[type][12] = maxspd;
// charbase[type][13] = maxcon;
// charbase[type][14] = maxdef;
// charbase[type][15] = maxres;
// charbase[type][16] = maxmov;
// charbase[type][17] = maxluck;
// charbase[type][18] = growlife;
// charbase[type][19] = growstrn;
// charbase[type][20] = growskl;
// charbase[type][21] = growspd;
// charbase[type][22] = growluc;
// charbase[type][23] = growdef;
// charbase[type][24] = growres;
// charbase[type][25] = growmov;
// charbase[type][26] = img;
// }
// */
//void setValues()
//{
//  //LORD//
//  charbase[LORD][0] = 18;
//  charbase[LORD][1] = 6;
//  charbase[LORD][2] = 6;
//  charbase[LORD][3] = 7;
//  charbase[LORD][4] = 8;
//  charbase[LORD][5] = 6;
//  charbase[LORD][6] = 0;
//  charbase[LORD][7] = 5;
//  charbase[LORD][8] = 5;
//  charbase[LORD][9] = 60;
//  charbase[LORD][10] = 20;
//  charbase[LORD][11] = 20;
//  charbase[LORD][12] = 20;
//  charbase[LORD][13] = 20;
//  charbase[LORD][14] = 20;
//  charbase[LORD][15] = 20;
//  charbase[LORD][16] = 15;
//  charbase[LORD][17] = 30;
//  charbase[LORD][18] = 90;
//  charbase[LORD][19] = 45;
//  charbase[LORD][20] = 40;
//  charbase[LORD][21] = 45;
//  charbase[LORD][22] = 40;
//  charbase[LORD][23] = 15;
//  charbase[LORD][24] = 15;
//  charbase[LORD][25] = 0;
// // charbase[LORD][26] = img;
//
//  //GREATLORD//
//  charbase[GREATLORD][0] = 18;
//  charbase[GREATLORD][1] = 3;
//  charbase[GREATLORD][2] = 3;
//  charbase[GREATLORD][3] = 4;
//  charbase[GREATLORD][4] = 10;
//  charbase[GREATLORD][5] = 5;
//  charbase[GREATLORD][6] = 0;
//  charbase[GREATLORD][7] = 7;
//  charbase[GREATLORD][8] = 7;
//  charbase[GREATLORD][9] = 60;
//  charbase[GREATLORD][10] = 27;
//  charbase[GREATLORD][11] = 26;
//  charbase[GREATLORD][12] = 24;
//  charbase[GREATLORD][13] = 25;
//  charbase[GREATLORD][14] = 23;
//  charbase[GREATLORD][15] = 23;
//  charbase[GREATLORD][16] = 15;
//  charbase[GREATLORD][17] = 30;
//  charbase[GREATLORD][18] = 90;
//  charbase[GREATLORD][19] = 45;
//  charbase[GREATLORD][20] = 40;
//  charbase[GREATLORD][21] = 45;
//  charbase[GREATLORD][22] = 40;
//  charbase[GREATLORD][23] = 15;
//  charbase[GREATLORD][24] = 15;
//  charbase[GREATLORD][25] = 0;
//  //charbase[GREATLORD][26] = img;
//
//  //MYRMIDON//
//  charbase[MYRMIDON][0] = 16;
//  charbase[MYRMIDON][1] = 4;
//  charbase[MYRMIDON][2] = 9;
//  charbase[MYRMIDON][3] = 9;
//  charbase[MYRMIDON][4] = 8;
//  charbase[MYRMIDON][5] = 2;
//  charbase[MYRMIDON][6] = 0;
//  charbase[MYRMIDON][7] = 5;
//  charbase[MYRMIDON][8] = 5;
//  charbase[MYRMIDON][9] = 60;
//  charbase[MYRMIDON][10] = 20;
//  charbase[MYRMIDON][11] = 20;
//  charbase[MYRMIDON][12] = 20;
//  charbase[MYRMIDON][13] = 20;
//  charbase[MYRMIDON][14] = 20;
//  charbase[MYRMIDON][15] = 20;
//  charbase[MYRMIDON][16] = 15;
//  charbase[MYRMIDON][17] = 30;
//  charbase[MYRMIDON][18] = 70;
//  charbase[MYRMIDON][19] = 35;
//  charbase[MYRMIDON][20] = 40;
//  charbase[MYRMIDON][21] = 40;
//  charbase[MYRMIDON][22] = 30;
//  charbase[MYRMIDON][23] = 15;
//  charbase[MYRMIDON][24] = 20;
//  charbase[MYRMIDON][25] = 0;
////  charbase[MYRMIDON][26] = img;
//
//  //SWORDMASTER//
//  charbase[SWORDMASTER][0] = 21;
//  charbase[SWORDMASTER][1] = 6;
//  charbase[SWORDMASTER][2] = 11;
//  charbase[SWORDMASTER][3] = 12;
//  charbase[SWORDMASTER][4] = 9;
//  charbase[SWORDMASTER][5] = 5;
//  charbase[SWORDMASTER][6] = 2;
//  charbase[SWORDMASTER][7] = 6;
//  charbase[SWORDMASTER][8] = 7;
//  charbase[SWORDMASTER][9] = 60;
//  charbase[SWORDMASTER][10] = 24;
//  charbase[SWORDMASTER][11] = 29;
//  charbase[SWORDMASTER][12] = 30;
//  charbase[SWORDMASTER][13] = 25;
//  charbase[SWORDMASTER][14] = 22;
//  charbase[SWORDMASTER][15] = 23;
//  charbase[SWORDMASTER][16] = 15;
//  charbase[SWORDMASTER][17] = 30;
//  charbase[SWORDMASTER][18] = 65;
//  charbase[SWORDMASTER][19] = 25;
//  charbase[SWORDMASTER][20] = 30;
//  charbase[SWORDMASTER][21] = 30;
//  charbase[SWORDMASTER][22] = 25;
//  charbase[SWORDMASTER][23] = 15;
//  charbase[SWORDMASTER][24] = 22;
//  charbase[SWORDMASTER][25] = 0;
////  charbase[SWORDMASTER][26] = img;
//
//  //ASSASSIN//
//  charbase[ASSASSIN][0] = 16;
//  charbase[ASSASSIN][1] = 3;
//  charbase[ASSASSIN][2] = 1;
//  charbase[ASSASSIN][3] = 9;
//  charbase[ASSASSIN][4] = 8;
//  charbase[ASSASSIN][5] = 2;
//  charbase[ASSASSIN][6] = 0;
//  charbase[ASSASSIN][7] = 6;
//  charbase[ASSASSIN][8] = 7;
//  charbase[ASSASSIN][9] = 60;
//  charbase[ASSASSIN][10] = 20;
//  charbase[ASSASSIN][11] = 30;
//  charbase[ASSASSIN][12] = 30;
//  charbase[ASSASSIN][13] = 20;
//  charbase[ASSASSIN][14] = 20;
//  charbase[ASSASSIN][15] = 20;
//  charbase[ASSASSIN][16] = 15;
//  charbase[ASSASSIN][17] = 30;
//  charbase[ASSASSIN][18] = 50;
//  charbase[ASSASSIN][19] = 5;
//  charbase[ASSASSIN][20] = 45;
//  charbase[ASSASSIN][21] = 40;
//  charbase[ASSASSIN][22] = 40;
//  charbase[ASSASSIN][23] = 5;
//  charbase[ASSASSIN][24] = 20;
//  charbase[ASSASSIN][25] = 0;
////  charbase[ASSASSIN][26] = img;
//
//  //THEIF//
//  charbase[THEIF][0] = 16;
//  charbase[THEIF][1] = 3;
//  charbase[THEIF][2] = 1;
//  charbase[THEIF][3] = 9;
//  charbase[THEIF][4] = 6;
//  charbase[THEIF][5] = 2;
//  charbase[THEIF][6] = 0;
//  charbase[THEIF][7] = 6;
//  charbase[THEIF][8] = 4;
//  charbase[THEIF][9] = 60;
//  charbase[THEIF][10] = 20;
//  charbase[THEIF][11] = 20;
//  charbase[THEIF][12] = 20;
//  charbase[THEIF][13] = 20;
//  charbase[THEIF][14] = 20;
//  charbase[THEIF][15] = 20;
//  charbase[THEIF][16] = 15;
//  charbase[THEIF][17] = 30;
//  charbase[THEIF][18] = 50;
//  charbase[THEIF][19] = 5;
//  charbase[THEIF][20] = 45;
//  charbase[THEIF][21] = 40;
//  charbase[THEIF][22] = 40;
//  charbase[THEIF][23] = 5;
//  charbase[THEIF][24] = 20;
//  charbase[THEIF][25] = 0;
////  charbase[THEIF][26] = img;
//
//  //ROUGE//
//  charbase[ROUGE][0] = 16;
//  charbase[ROUGE][1] = 3;
//  charbase[ROUGE][2] = 1;
//  charbase[ROUGE][3] = 9;
//  charbase[ROUGE][4] = 7;
//  charbase[ROUGE][5] = 2;
//  charbase[ROUGE][6] = 0;
//  charbase[ROUGE][7] = 7;
//  charbase[ROUGE][8] = 3;
//  charbase[ROUGE][9] = 60;
//  charbase[ROUGE][10] = 20;
//  charbase[ROUGE][11] = 30;
//  charbase[ROUGE][12] = 30;
//  charbase[ROUGE][13] = 20;
//  charbase[ROUGE][14] = 20;
//  charbase[ROUGE][15] = 20;
//  charbase[ROUGE][16] = 15;
//  charbase[ROUGE][17] = 30;
//  charbase[ROUGE][18] = 50;
//  charbase[ROUGE][19] = 10;
//  charbase[ROUGE][20] = 45;
//  charbase[ROUGE][21] = 40;
//  charbase[ROUGE][22] = 40;
//  charbase[ROUGE][23] = 5;
//  charbase[ROUGE][24] = 20;
//  charbase[ROUGE][25] = 0;
////  charbase[ROUGE][26] = img;
//
//  //PIRATE//
//  charbase[PIRATE][0] = 19;
//  charbase[PIRATE][1] = 4;
//  charbase[PIRATE][2] = 2;
//  charbase[PIRATE][3] = 6;
//  charbase[PIRATE][4] = 10;
//  charbase[PIRATE][5] = 3;
//  charbase[PIRATE][6] = 0;
//  charbase[PIRATE][7] = 5;
//  charbase[PIRATE][8] = 5;
//  charbase[PIRATE][9] = 60;
//  charbase[PIRATE][10] = 20;
//  charbase[PIRATE][11] = 20;
//  charbase[PIRATE][12] = 20;
//  charbase[PIRATE][13] = 20;
//  charbase[PIRATE][14] = 20;
//  charbase[PIRATE][15] = 20;
//  charbase[PIRATE][16] = 15;
//  charbase[PIRATE][17] = 30;
//  charbase[PIRATE][18] = 75;
//  charbase[PIRATE][19] = 50;
//  charbase[PIRATE][20] = 35;
//  charbase[PIRATE][21] = 25;
//  charbase[PIRATE][22] = 15;
//  charbase[PIRATE][23] = 10;
//  charbase[PIRATE][24] = 13;
//  charbase[PIRATE][25] = 0;
////  charbase[PIRATE][26] = img;
//
//  //BERSERKER//
//  charbase[BERSERKER][0] = 24;
//  charbase[BERSERKER][1] = 7;
//  charbase[BERSERKER][2] = 6;
//  charbase[BERSERKER][3] = 7;
//  charbase[BERSERKER][4] = 10;
//  charbase[BERSERKER][5] = 6;
//  charbase[BERSERKER][6] = 0;
//  charbase[BERSERKER][7] = 6;
//  charbase[BERSERKER][8] = 5;
//  charbase[BERSERKER][9] = 60;
//  charbase[BERSERKER][10] = 30;
//  charbase[BERSERKER][11] = 29;
//  charbase[BERSERKER][12] = 28;
//  charbase[BERSERKER][13] = 25;
//  charbase[BERSERKER][14] = 23;
//  charbase[BERSERKER][15] = 21;
//  charbase[BERSERKER][16] = 15;
//  charbase[BERSERKER][17] = 30;
//  charbase[BERSERKER][18] = 75;
//  charbase[BERSERKER][19] = 50;
//  charbase[BERSERKER][20] = 35;
//  charbase[BERSERKER][21] = 25;
//  charbase[BERSERKER][22] = 15;
//  charbase[BERSERKER][23] = 10;
//  charbase[BERSERKER][24] = 13;
//  charbase[BERSERKER][25] = 0;
////  charbase[BERSERKER][26] = img;
//
//  //FIGHTER//
//  charbase[FIGHTER][0] = 20;
//  charbase[FIGHTER][1] = 5;
//  charbase[FIGHTER][2] = 4;
//  charbase[FIGHTER][3] = 4;
//  charbase[FIGHTER][4] = 11;
//  charbase[FIGHTER][5] = 2;
//  charbase[FIGHTER][6] = 0;
//  charbase[FIGHTER][7] = 5;
//  charbase[FIGHTER][8] = 2;
//  charbase[FIGHTER][9] = 60;
//  charbase[FIGHTER][10] = 20;
//  charbase[FIGHTER][11] = 20;
//  charbase[FIGHTER][12] = 20;
//  charbase[FIGHTER][13] = 20;
//  charbase[FIGHTER][14] = 20;
//  charbase[FIGHTER][15] = 20;
//  charbase[FIGHTER][16] = 15;
//  charbase[FIGHTER][17] = 30;
//  charbase[FIGHTER][18] = 85;
//  charbase[FIGHTER][19] = 55;
//  charbase[FIGHTER][20] = 35;
//  charbase[FIGHTER][21] = 30;
//  charbase[FIGHTER][22] = 15;
//  charbase[FIGHTER][23] = 15;
//  charbase[FIGHTER][24] = 15;
//  charbase[FIGHTER][25] = 0;
////  charbase[FIGHTER][26] = img;
//
//  //WARRIOR//
//  charbase[WARRIOR][0] = 28;
//  charbase[WARRIOR][1] = 8;
//  charbase[WARRIOR][2] = 5;
//  charbase[WARRIOR][3] = 6;
//  charbase[WARRIOR][4] = 13;
//  charbase[WARRIOR][5] = 5;
//  charbase[WARRIOR][6] = 0;
//  charbase[WARRIOR][7] = 6;
//  charbase[WARRIOR][8] = 3;
//  charbase[WARRIOR][9] = 60;
//  charbase[WARRIOR][10] = 30;
//  charbase[WARRIOR][11] = 28;
//  charbase[WARRIOR][12] = 26;
//  charbase[WARRIOR][13] = 25;
//  charbase[WARRIOR][14] = 26;
//  charbase[WARRIOR][15] = 22;
//  charbase[WARRIOR][16] = 15;
//  charbase[WARRIOR][17] = 30;
//  charbase[WARRIOR][18] = 80;
//  charbase[WARRIOR][19] = 45;
//  charbase[WARRIOR][20] = 25;
//  charbase[WARRIOR][21] = 20;
//  charbase[WARRIOR][22] = 15;
//  charbase[WARRIOR][23] = 16;
//  charbase[WARRIOR][24] = 17;
//  charbase[WARRIOR][25] = 0;
////  charbase[WARRIOR][26] = img;
//
//  //HERO//
//  charbase[HERO][0] = 22;
//  charbase[HERO][1] = 6;
//  charbase[HERO][2] = 9;
//  charbase[HERO][3] = 10;
//  charbase[HERO][4] = 11;
//  charbase[HERO][5] = 8;
//  charbase[HERO][6] = 2;
//  charbase[HERO][7] = 6;
//  charbase[HERO][8] = 4;
//  charbase[HERO][9] = 60;
//  charbase[HERO][10] = 25;
//  charbase[HERO][11] = 30;
//  charbase[HERO][12] = 26;
//  charbase[HERO][13] = 25;
//  charbase[HERO][14] = 25;
//  charbase[HERO][15] = 22;
//  charbase[HERO][16] = 15;
//  charbase[HERO][17] = 30;
//  charbase[HERO][18] = 75;
//  charbase[HERO][19] = 30;
//  charbase[HERO][20] = 30;
//  charbase[HERO][21] = 20;
//  charbase[HERO][22] = 25;
//  charbase[HERO][23] = 20;
//  charbase[HERO][24] = 20;
//  charbase[HERO][25] = 0;
////  charbase[HERO][26] = img;
//
//  //MERCENARY//
//  charbase[MERCENARY][0] = 18;
//  charbase[MERCENARY][1] = 4;
//  charbase[MERCENARY][2] = 8;
//  charbase[MERCENARY][3] = 8;
//  charbase[MERCENARY][4] = 9;
//  charbase[MERCENARY][5] = 4;
//  charbase[MERCENARY][6] = 0;
//  charbase[MERCENARY][7] = 5;
//  charbase[MERCENARY][8] = 2;
//  charbase[MERCENARY][9] = 60;
//  charbase[MERCENARY][10] = 20;
//  charbase[MERCENARY][11] = 20;
//  charbase[MERCENARY][12] = 20;
//  charbase[MERCENARY][13] = 20;
//  charbase[MERCENARY][14] = 20;
//  charbase[MERCENARY][15] = 20;
//  charbase[MERCENARY][16] = 15;
//  charbase[MERCENARY][17] = 30;
//  charbase[MERCENARY][18] = 80;
//  charbase[MERCENARY][19] = 40;
//  charbase[MERCENARY][20] = 40;
//  charbase[MERCENARY][21] = 32;
//  charbase[MERCENARY][22] = 30;
//  charbase[MERCENARY][23] = 18;
//  charbase[MERCENARY][24] = 20;
//  charbase[MERCENARY][25] = 0;
////  charbase[MERCENARY][26] = img;
//
//  //RANGER//
//  charbase[RANGER][0] = 21;
//  charbase[RANGER][1] = 7;
//  charbase[RANGER][2] = 6;
//  charbase[RANGER][3] = 7;
//  charbase[RANGER][4] = 9;
//  charbase[RANGER][5] = 6;
//  charbase[RANGER][6] = 3;
//  charbase[RANGER][7] = 7;
//  charbase[RANGER][8] = 4;
//  charbase[RANGER][9] = 60;
//  charbase[RANGER][10] = 25;
//  charbase[RANGER][11] = 28;
//  charbase[RANGER][12] = 30;
//  charbase[RANGER][13] = 25;
//  charbase[RANGER][14] = 24;
//  charbase[RANGER][15] = 23;
//  charbase[RANGER][16] = 15;
//  charbase[RANGER][17] = 30;
//  charbase[RANGER][18] = 60;
//  charbase[RANGER][19] = 25;
//  charbase[RANGER][20] = 30;
//  charbase[RANGER][21] = 35;
//  charbase[RANGER][22] = 25;
//  charbase[RANGER][23] = 15;
//  charbase[RANGER][24] = 15;
//  charbase[RANGER][25] = 0;
////  charbase[RANGER][26] = img;
//
//  //ARCHER//
//  charbase[ARCHER][0] = 18;
//  charbase[ARCHER][1] = 4;
//  charbase[ARCHER][2] = 3;
//  charbase[ARCHER][3] = 3;
//  charbase[ARCHER][4] = 7;
//  charbase[ARCHER][5] = 3;
//  charbase[ARCHER][6] = 0;
//  charbase[ARCHER][7] = 5;
//  charbase[ARCHER][8] = 5;
//  charbase[ARCHER][9] = 60;
//  charbase[ARCHER][10] = 20;
//  charbase[ARCHER][11] = 20;
//  charbase[ARCHER][12] = 20;
//  charbase[ARCHER][13] = 20;
//  charbase[ARCHER][14] = 20;
//  charbase[ARCHER][15] = 20;
//  charbase[ARCHER][16] = 15;
//  charbase[ARCHER][17] = 30;
//  charbase[ARCHER][18] = 70;
//  charbase[ARCHER][19] = 35;
//  charbase[ARCHER][20] = 40;
//  charbase[ARCHER][21] = 32;
//  charbase[ARCHER][22] = 35;
//  charbase[ARCHER][23] = 15;
//  charbase[ARCHER][24] = 15;
//  charbase[ARCHER][25] = 0;
////  charbase[ARCHER][26] = img;
//
//  //SNIPER//
//  charbase[SNIPER][0] = 21;
//  charbase[SNIPER][1] = 7;
//  charbase[SNIPER][2] = 6;
//  charbase[SNIPER][3] = 5;
//  charbase[SNIPER][4] = 8;
//  charbase[SNIPER][5] = 5;
//  charbase[SNIPER][6] = 2;
//  charbase[SNIPER][7] = 6;
//  charbase[SNIPER][8] = 7;
//  charbase[SNIPER][9] = 60;
//  charbase[SNIPER][10] = 25;
//  charbase[SNIPER][11] = 30;
//  charbase[SNIPER][12] = 28;
//  charbase[SNIPER][13] = 20;
//  charbase[SNIPER][14] = 25;
//  charbase[SNIPER][15] = 23;
//  charbase[SNIPER][16] = 15;
//  charbase[SNIPER][17] = 30;
//  charbase[SNIPER][18] = 65;
//  charbase[SNIPER][19] = 30;
//  charbase[SNIPER][20] = 30;
//  charbase[SNIPER][21] = 20;
//  charbase[SNIPER][22] = 30;
//  charbase[SNIPER][23] = 15;
//  charbase[SNIPER][24] = 20;
//  charbase[SNIPER][25] = 0;
////  charbase[SNIPER][26] = img;
//
//  //KNIGHT//
//  charbase[KNIGHT][0] = 17;
//  charbase[KNIGHT][1] = 5;
//  charbase[KNIGHT][2] = 2;
//  charbase[KNIGHT][3] = 0;
//  charbase[KNIGHT][4] = 13;
//  charbase[KNIGHT][5] = 9;
//  charbase[KNIGHT][6] = 0;
//  charbase[KNIGHT][7] = 4;
//  charbase[KNIGHT][8] = 4;
//  charbase[KNIGHT][9] = 60;
//  charbase[KNIGHT][10] = 20;
//  charbase[KNIGHT][11] = 20;
//  charbase[KNIGHT][12] = 20;
//  charbase[KNIGHT][13] = 20;
//  charbase[KNIGHT][14] = 20;
//  charbase[KNIGHT][15] = 20;
//  charbase[KNIGHT][16] = 15;
//  charbase[KNIGHT][17] = 30;
//  charbase[KNIGHT][18] = 80;
//  charbase[KNIGHT][19] = 40;
//  charbase[KNIGHT][20] = 30;
//  charbase[KNIGHT][21] = 15;
//  charbase[KNIGHT][22] = 25;
//  charbase[KNIGHT][23] = 28;
//  charbase[KNIGHT][24] = 20;
//  charbase[KNIGHT][25] = 0;
////  charbase[KNIGHT][26] = img;
//
//  //CAVALIER//
//  charbase[CAVALIER][0] = 20;
//  charbase[CAVALIER][1] = 5;
//  charbase[CAVALIER][2] = 2;
//  charbase[CAVALIER][3] = 5;
//  charbase[CAVALIER][4] = 9;
//  charbase[CAVALIER][5] = 6;
//  charbase[CAVALIER][6] = 0;
//  charbase[CAVALIER][7] = 7;
//  charbase[CAVALIER][8] = 3;
//  charbase[CAVALIER][9] = 60;
//  charbase[CAVALIER][10] = 20;
//  charbase[CAVALIER][11] = 20;
//  charbase[CAVALIER][12] = 20;
//  charbase[CAVALIER][13] = 25;
//  charbase[CAVALIER][14] = 20;
//  charbase[CAVALIER][15] = 20;
//  charbase[CAVALIER][16] = 15;
//  charbase[CAVALIER][17] = 30;
//  charbase[CAVALIER][18] = 75;
//  charbase[CAVALIER][19] = 35;
//  charbase[CAVALIER][20] = 40;
//  charbase[CAVALIER][21] = 28;
//  charbase[CAVALIER][22] = 30;
//  charbase[CAVALIER][23] = 15;
//  charbase[CAVALIER][24] = 15;
//  charbase[CAVALIER][25] = 0;
////  charbase[CAVALIER][26] = img;
//
//  //GENERAL//
//  charbase[GENERAL][0] = 21;
//  charbase[GENERAL][1] = 8;
//  charbase[GENERAL][2] = 4;
//  charbase[GENERAL][3] = 3;
//  charbase[GENERAL][4] = 15;
//  charbase[GENERAL][5] = 13;
//  charbase[GENERAL][6] = 3;
//  charbase[GENERAL][7] = 5;
//  charbase[GENERAL][8] = 6;
//  charbase[GENERAL][9] = 60;
//  charbase[GENERAL][10] = 29;
//  charbase[GENERAL][11] = 27;
//  charbase[GENERAL][12] = 24;
//  charbase[GENERAL][13] = 25;
//  charbase[GENERAL][14] = 30;
//  charbase[GENERAL][15] = 25;
//  charbase[GENERAL][16] = 15;
//  charbase[GENERAL][17] = 30;
//  charbase[GENERAL][18] = 75;
//  charbase[GENERAL][19] = 30;
//  charbase[GENERAL][20] = 20;
//  charbase[GENERAL][21] = 10;
//  charbase[GENERAL][22] = 20;
//  charbase[GENERAL][23] = 23;
//  charbase[GENERAL][24] = 25;
//  charbase[GENERAL][25] = 0;
////  charbase[GENERAL][26] = img;
//
//  //GREATKNIGHT//
//  charbase[GREATKNIGHT][0] = 21;
//  charbase[GREATKNIGHT][1] = 8;
//  charbase[GREATKNIGHT][2] = 4;
//  charbase[GREATKNIGHT][3] = 6;
//  charbase[GREATKNIGHT][4] = 13;
//  charbase[GREATKNIGHT][5] = 11;
//  charbase[GREATKNIGHT][6] = 3;
//  charbase[GREATKNIGHT][7] = 6;
//  charbase[GREATKNIGHT][8] = 3;
//  charbase[GREATKNIGHT][9] = 60;
//  charbase[GREATKNIGHT][10] = 28;
//  charbase[GREATKNIGHT][11] = 24;
//  charbase[GREATKNIGHT][12] = 24;
//  charbase[GREATKNIGHT][13] = 25;
//  charbase[GREATKNIGHT][14] = 29;
//  charbase[GREATKNIGHT][15] = 25;
//  charbase[GREATKNIGHT][16] = 15;
//  charbase[GREATKNIGHT][17] = 30;
//  charbase[GREATKNIGHT][18] = 70;
//  charbase[GREATKNIGHT][19] = 30;
//  charbase[GREATKNIGHT][20] = 20;
//  charbase[GREATKNIGHT][21] = 15;
//  charbase[GREATKNIGHT][22] = 20;
//  charbase[GREATKNIGHT][23] = 21;
//  charbase[GREATKNIGHT][24] = 20;
//  charbase[GREATKNIGHT][25] = 0;
////  charbase[GREATKNIGHT][26] = img;
//
//  //PALADIN//
//  charbase[PALADIN][0] = 23;
//  charbase[PALADIN][1] = 7;
//  charbase[PALADIN][2] = 4;
//  charbase[PALADIN][3] = 7;
//  charbase[PALADIN][4] = 11;
//  charbase[PALADIN][5] = 8;
//  charbase[PALADIN][6] = 3;
//  charbase[PALADIN][7] = 8;
//  charbase[PALADIN][8] = 5;
//  charbase[PALADIN][9] = 60;
//  charbase[PALADIN][10] = 25;
//  charbase[PALADIN][11] = 26;
//  charbase[PALADIN][12] = 24;
//  charbase[PALADIN][13] = 25;
//  charbase[PALADIN][14] = 25;
//  charbase[PALADIN][15] = 25;
//  charbase[PALADIN][16] = 15;
//  charbase[PALADIN][17] = 30;
//  charbase[PALADIN][18] = 70;
//  charbase[PALADIN][19] = 25;
//  charbase[PALADIN][20] = 30;
//  charbase[PALADIN][21] = 18;
//  charbase[PALADIN][22] = 25;
//  charbase[PALADIN][23] = 12;
//  charbase[PALADIN][24] = 20;
//  charbase[PALADIN][25] = 0;
////  charbase[PALADIN][26] = img;
//
//  //PEGKNIGHT//
//  charbase[PEGKNIGHT][0] = 14;
//  charbase[PEGKNIGHT][1] = 4;
//  charbase[PEGKNIGHT][2] = 5;
//  charbase[PEGKNIGHT][3] = 5;
//  charbase[PEGKNIGHT][4] = 5;
//  charbase[PEGKNIGHT][5] = 3;
//  charbase[PEGKNIGHT][6] = 2;
//  charbase[PEGKNIGHT][7] = 7;
//  charbase[PEGKNIGHT][8] = 5;
//  charbase[PEGKNIGHT][9] = 60;
//  charbase[PEGKNIGHT][10] = 20;
//  charbase[PEGKNIGHT][11] = 20;
//  charbase[PEGKNIGHT][12] = 20;
//  charbase[PEGKNIGHT][13] = 20;
//  charbase[PEGKNIGHT][14] = 20;
//  charbase[PEGKNIGHT][15] = 20;
//  charbase[PEGKNIGHT][16] = 15;
//  charbase[PEGKNIGHT][17] = 30;
//  charbase[PEGKNIGHT][18] = 65;
//  charbase[PEGKNIGHT][19] = 35;
//  charbase[PEGKNIGHT][20] = 40;
//  charbase[PEGKNIGHT][21] = 40;
//  charbase[PEGKNIGHT][22] = 35;
//  charbase[PEGKNIGHT][23] = 12;
//  charbase[PEGKNIGHT][24] = 35;
//  charbase[PEGKNIGHT][25] = 0;
////  charbase[PEGKNIGHT][26] = img;
//
//  //FALCOKNIGHT//
//  charbase[FALCOKNIGHT][0] = 20;
//  charbase[FALCOKNIGHT][1] = 6;
//  charbase[FALCOKNIGHT][2] = 7;
//  charbase[FALCOKNIGHT][3] = 7;
//  charbase[FALCOKNIGHT][4] = 6;
//  charbase[FALCOKNIGHT][5] = 5;
//  charbase[FALCOKNIGHT][6] = 4;
//  charbase[FALCOKNIGHT][7] = 8;
//  charbase[FALCOKNIGHT][8] = 6;
//  charbase[FALCOKNIGHT][9] = 60;
//  charbase[FALCOKNIGHT][10] = 23;
//  charbase[FALCOKNIGHT][11] = 25;
//  charbase[FALCOKNIGHT][12] = 28;
//  charbase[FALCOKNIGHT][13] = 25;
//  charbase[FALCOKNIGHT][14] = 23;
//  charbase[FALCOKNIGHT][15] = 26;
//  charbase[FALCOKNIGHT][16] = 15;
//  charbase[FALCOKNIGHT][17] = 30;
//  charbase[FALCOKNIGHT][18] = 60;
//  charbase[FALCOKNIGHT][19] = 30;
//  charbase[FALCOKNIGHT][20] = 30;
//  charbase[FALCOKNIGHT][21] = 30;
//  charbase[FALCOKNIGHT][22] = 30;
//  charbase[FALCOKNIGHT][23] = 12;
//  charbase[FALCOKNIGHT][24] = 30;
//  charbase[FALCOKNIGHT][25] = 0;
////  charbase[FALCOKNIGHT][26] = img;
//
//  //WYVERNRIDER//
//  charbase[WYVERNRIDER][0] = 20;
//  charbase[WYVERNRIDER][1] = 7;
//  charbase[WYVERNRIDER][2] = 3;
//  charbase[WYVERNRIDER][3] = 5;
//  charbase[WYVERNRIDER][4] = 10;
//  charbase[WYVERNRIDER][5] = 8;
//  charbase[WYVERNRIDER][6] = 0;
//  charbase[WYVERNRIDER][7] = 7;
//  charbase[WYVERNRIDER][8] = 3;
//  charbase[WYVERNRIDER][9] = 60;
//  charbase[WYVERNRIDER][10] = 20;
//  charbase[WYVERNRIDER][11] = 20;
//  charbase[WYVERNRIDER][12] = 20;
//  charbase[WYVERNRIDER][13] = 25;
//  charbase[WYVERNRIDER][14] = 20;
//  charbase[WYVERNRIDER][15] = 20;
//  charbase[WYVERNRIDER][16] = 15;
//  charbase[WYVERNRIDER][17] = 30;
//  charbase[WYVERNRIDER][18] = 80;
//  charbase[WYVERNRIDER][19] = 45;
//  charbase[WYVERNRIDER][20] = 35;
//  charbase[WYVERNRIDER][21] = 30;
//  charbase[WYVERNRIDER][22] = 25;
//  charbase[WYVERNRIDER][23] = 25;
//  charbase[WYVERNRIDER][24] = 15;
//  charbase[WYVERNRIDER][25] = 0;
////  charbase[WYVERNRIDER][26] = img;
//
//  //WYVERNKNIGHT//
//  charbase[WYVERNKNIGHT][0] = 20;
//  charbase[WYVERNKNIGHT][1] = 7;
//  charbase[WYVERNKNIGHT][2] = 7;
//  charbase[WYVERNKNIGHT][3] = 8;
//  charbase[WYVERNKNIGHT][4] = 10;
//  charbase[WYVERNKNIGHT][5] = 7;
//  charbase[WYVERNKNIGHT][6] = 1;
//  charbase[WYVERNKNIGHT][7] = 8;
//  charbase[WYVERNKNIGHT][8] = 4;
//  charbase[WYVERNKNIGHT][9] = 60;
//  charbase[WYVERNKNIGHT][10] = 25;
//  charbase[WYVERNKNIGHT][11] = 26;
//  charbase[WYVERNKNIGHT][12] = 28;
//  charbase[WYVERNKNIGHT][13] = 25;
//  charbase[WYVERNKNIGHT][14] = 24;
//  charbase[WYVERNKNIGHT][15] = 22;
//  charbase[WYVERNKNIGHT][16] = 15;
//  charbase[WYVERNKNIGHT][17] = 30;
//  charbase[WYVERNKNIGHT][18] = 65;
//  charbase[WYVERNKNIGHT][19] = 35;
//  charbase[WYVERNKNIGHT][20] = 30;
//  charbase[WYVERNKNIGHT][21] = 30;
//  charbase[WYVERNKNIGHT][22] = 25;
//  charbase[WYVERNKNIGHT][23] = 15;
//  charbase[WYVERNKNIGHT][24] = 17;
//  charbase[WYVERNKNIGHT][25] = 0;
////  charbase[WYVERNKNIGHT][26] = img;
///*
//  //WYVERNLORD//
//  charbase[WYVERNLORD][0] = 25;
//  charbase[WYVERNLORD][1] = 9;
//  charbase[WYVERNLORD][2] = 5;
//  charbase[WYVERNLORD][3] = 7;
//  charbase[WYVERNLORD][4] = 11;
//  charbase[WYVERNLORD][5] = 10;
//  charbase[WYVERNLORD][6] = 1;
//  charbase[WYVERNLORD][7] = 8;
//  charbase[WYVERNLORD][8] = 5;
//  charbase[WYVERNLORD][9] = 60;
//  charbase[WYVERNLORD][10] = 27;
//  charbase[WYVERNLORD][11] = 25;
//  charbase[WYVERNLORD][12] = 23;
//  charbase[WYVERNLORD][13] = 25;
//  charbase[WYVERNLORD][14] = 28;
//  charbase[WYVERNLORD][15] = 22;
//  charbase[WYVERNLORD][16] = 15;
//  charbase[WYVERNLORD][17] = 30;
// charbase[WYVERNLORD][18] = growlife;
//  charbase[WYVERNLORD][19] = growstrn;
//  charbase[WYVERNLORD][20] = growskl;
//  charbase[WYVERNLORD][21] = growspd;
//  charbase[WYVERNLORD][22] = growluc;
//  charbase[WYVERNLORD][23] = growdef;
//  charbase[WYVERNLORD][24] = growres;
//  charbase[WYVERNLORD][25] = 0;
//  charbase[WYVERNLORD][26] = img;
//  */
//}

abstract class Lanceman extends Characters
{
  Lanceman(String me, String name1, Class first)
  {
    super(me, name1, first);
  }
  Lanceman(String me, String name1, Class first, Class second)
  {
    super(me, name1, first, second);
  }
  Lanceman(String me, String name1, Class first, Class second, Class third)
  {
    super(me, name1, first, second, third);
  }
}

class Knight extends Lanceman
{
  Knight()
  {
    super("good","Knight", lance);
    health = 17;
    strength= 5;
    skill = 2;
    speed = 0;
    con = 13;
    defence = 9;
    resistance = 0;
    movement = 4;
    luck = 5;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 90;
    growstrength = 45;
    growskill = 35;
    growspeed = 30;
    growluck = 30;
    growdefence = 55;
    growresistance = 20;
    growmovement = 0;
    moves = movement;
  }
}

class Cavalier extends Lanceman 
{
  Cavalier()
  {
    super("good","Cavalier", lance, sword);
    health = 20;
    strength= 5;
    skill = 2;
    speed = 5;
    con = 9;
    defence = 6;
    resistance = 0;
    movement = 7;
    luck = 3;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 80;
    growstrength = 40;
    growskill = 50;
    growspeed = 45;
    growluck = 25;
    growdefence = 25;
    growresistance = 20;
    growmovement = 0;
    moves = movement;
  }
}

abstract class Monsters extends Characters
{
  Monsters(String me,String name3,  Class first)
  {
    super(me, name3, first);
  }
  Monsters(String me, String name3,Class first, Class second)
  {
    super(me, name3,first, second);
  }
  Monsters(String me, String name3,Class first, Class second, Class third)
  {
    super(me, name3,first, second, third);
  }
}

class Entombed extends Monsters
{
  Entombed()
  {
    super("evil","Entombed", claw);
    health = 35;
    strength= 3;
    skill = 0;
    speed = 1;
    con = 6;
    defence = 0;
    resistance = 0;
    movement = 5;
    luck = 0;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 25;
    maxskill = 22;
    maxspeed =21;
    maxcon = 25;
    maxdefence = 24;
    maxresistance = 22;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 85;
    growstrength = 40;
    growskill = 25;
    growspeed = 17;
    growluck = 50;
    growdefence = 10;
    growresistance = 13;
    growmovement = 0;
    moves = movement;
  }
}

class Revenant extends Monsters
{
  Revenant() 
  {
    super("evil","Revenant", claw);
    health = 25;
    strength= 2;
    skill = 0;
    speed = 0;
    con = 6;
    defence = 0;
    resistance = 0;
    movement = 4;
    luck = 0;
    currenthealth = health;
    maxhealth = 40;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 95;
    growstrength = 50;
    growskill = 30;
    growspeed = 20;
    growluck = 10;
    growdefence = 10;
    growresistance = 13;
    growmovement = 0;  
    moves = movement;
  }
}

class Cyclops extends Monsters
{
  Cyclops()
  {
    super("evil","Cyclops", axe);
    health = 40;
    strength= 8;
    skill = 5;
    speed = 6;
    con = 15;
    defence = 4;
    resistance = 0;
    movement = 5;
    luck = 0;
    currenthealth = health;
    maxhealth = 60;
    maxstrength = 20;
    maxskill = 20;
    maxspeed =20;
    maxcon = 20;
    maxdefence = 20;
    maxresistance = 20;
    maxmovement = 15;
    maxluck = 30;
    growhealth = 95;
    growstrength = 30;
    growskill = 35;
    growspeed = 25;
    growluck = 10;
    growdefence = 24;
    growresistance = 25;
    growmovement = 0;
    moves = movement;
  }
}



  /////////////////////types///////////////////
  static final int LORD = 1;
  static final int GREATLORD=2;
  ///////////////////////////////
  static final int MYRMIDON = 3;
  static final int SWORDMASTER =4;
  static final int ASSASSIN =5;
  static final int THEIF= 6;
  static final int ROUGE =7;

  ///////////////////////////////
  static final int PIRATE = 8;
  static final int BERSERKER =9;
  static final int FIGHTER =10;
  static final int WARRIOR= 11;
  static final int HERO=12;
  static final int MERCENARY= 13;
  static final int RANGER=14;
  static final int ARCHER=15;
  static final int SNIPER=16;

  ///////////////////////////////
  static final int KNIGHT =17;
  static final int CAVALIER =18;
  static final int GENERAL =19;
  static final int GREATKNIGHT =20;
  static final int PALADIN =21;

  ///////////////////////////////
  static final int PEGKNIGHT =22;
  static final int FALCOKNIGHT=23;
  static final int WYVERNRIDER =24;
  static final int WYVERNKNIGHT =25;
  static final int WYVERNLORD =26;

  ////////////////////////////////
  static final int MAGE =27;
  static final int SHAMAN = 28;
  static final int MONK =29;
  static final int PRIEST =30;
  static final int SAGE =31;
  static final int MAGEKNIGHT =32;
  static final int BISHOP =33;
  static final int TROUBADOUR =34;  //Troubadour
  static final int VALKYRIE =35;
  static final int DRUID =36;

  ///////////////////////////////
  static final int BRIGAND =37;
  static final int SOLDIER =38;

  ///////////////////////////////////////enimies//////////////////////
  static final int REVENANT= 39;
  static final int ENTOMBED = 40;
  /////////////////

  static final int BONEWALKER= 41; 
  static final int WIGHT= 42;
  //////////////
  static final int BAEL= 43;
  static final int ELDERBAEL= 44;
  ////////////
  static final int CYCLOPS = 45;  
  //////////////////////
  static final int MAUTHEDOOG = 46;
  static final int GWYLLGI= 47;  
  //////////////////////
  static final int TARVOS= 48;  
  static final int MAELDUIN = 49;
  ////////////////////////
  static final int MOGALL= 50;  
  static final int ARCHMOGALL= 51;
  /////////////////////
  static final int GORGON=52;
  ///////////////////
  static final int GARGOYLE = 53;
  static final int DEATHGOYLE = 54;
  ////////////////////  





class inventory
{
  int value;
  int uses;
  int xp;
  String name= "";
  int range;
  int rank;
  int weight;
  int might;
  int hit;
  int critical;
  int getrange()
  {
    return range;
  }

  int getrank()
  {
    return rank;
  }

  int getweight()
  {
    return weight;
  }

  int getmighty()
  {
    return might;
  }

  int gethit()
  {
    return hit;
  }

  int getcritical()
  {
    return critical;
  }
  inventory()
  {
    super();
  }
  Class checkme()
  {
    if (this instanceof Sword)
      return (Class) sword;
    else if ( this instanceof Axe)
      return (Class) axe;
    else if ( this instanceof Bow)
      return (Class) bow;
    else if ( this instanceof Lance)
      return (Class) lance;
    else if ( this instanceof Claw)
      return (Class) claw;
    else if ( this instanceof Item)
      return (Class) item;
    else if ( this instanceof Weapon)
      return (Class) weapon;
    else
      return (Class) Inventory;
  }
}
class Item extends inventory
{
  Item()
  {
    super();
  }
}

class Weapon extends inventory
{
  Weapon()
  {
    super();
  }
  int range;
  int rank;
  int weight;
  int might;
  int hit;
  int critical;
  int getrange()
  {
    return range;
  }

  int getrank()
  {
    return rank;
  }

  int getweight()
  {
    return weight;
  }

  int getmighty()
  {
    return might;
  }

  int gethit()
  {
    return hit;
  }

  int getcritical()
  {
    return critical;
  }
}

//swords/////////////////////////////////////////////////////
class Sword extends Weapon
{
  Sword()
  {
    super();
  }
  Sword(String myname, int myrange, int myrank, int myweight, int mymight, int myhit, int mycrit, int myuses)
  {
    super();
    name = myname;
    range = myrange;
    rank = myrank;
    weight = myweight;
    might = mymight;
    hit = myhit;
    critical = mycrit;
    uses = myuses;
  }
}

Sword ironsword()
{
  return new Sword("iron sword", 1, 1, 5, 5, 90, 0, 46);
}

Sword killingedge()
{
  return new Sword("KillingEdge", 1, 2, 7, 9, 75, 30, 20);
}



Sword ironblade()
{
  return new Sword("IronBlade", 1, 1, 1, 9, 70, 0, 40);
}

Sword runesword()
{
  return new Sword("RuneSword", 2, 2, 4, 12, 90, 0, 20);
}

Sword shamsher()
{
  return new Sword("shamsher", 1, 1, 5, 8, 75, 35, 20);
}

Sword steelsword()
{
  return new Sword("SteelSword", 1, 10, 8, 75, 0, 1, 30);
}

Sword silversword()
{
  return new Sword("SilverSword", 1, 1, 8, 13, 80, 0, 46);
}



//axes/////////////////////////////////////
class Axe extends Weapon
{
  Axe()
  {
    super();
  }
  Axe(String myname, int myrange, int myrank, int myweight, int mymight, int myhit, int mycrit, int myuses)
  {
    super();
    name = myname;
    range = myrange;
    rank = myrank;
    weight = myweight;
    might = mymight;
    hit = myhit;
    critical = mycrit;
    uses = myuses;
  }
}


Axe ironaxe()
{
  return new Axe("IronAxe", 1, 1, 10, 8, 75, 0, 45);
}

Axe silveraxe()
{
  return new Axe("SilverAxe", 1, 2, 1, 15, 70, 0, 20);
}

Axe steelaxe()
{
  return new Axe("SteelAxe", 1, 1, 15, 11, 65, 0, 30);
}

Axe handaxe() {
  return new Axe("HandAxe", 2, 1, 12, 7, 60, 0, 20);
}

Axe killeraxe() {
  return new Axe("KillerAxe", 1, 1, 11, 11, 65, 30, 30);
}

//lances///////////////////////////////////////////////////////////
class Lance extends Weapon
{
  Lance()
  {
    super();
  }
  Lance(String myname, int myrange, int myrank, int myweight, int mymight, int myhit, int mycrit, int myuses)
  {
    super();
    name = myname;
    range = myrange;
    rank = myrank;
    weight = myweight;
    might = mymight;
    hit = myhit;
    critical = mycrit;
    uses = myuses;
  }
}

Lance ironlance()
{ 
  return new Lance("IronLance", 1, 1, 8, 7, 80, 0, 45);
}

Lance steellance()
{
  return new Lance("SteelLance", 1, 2, 15, 10, 70, 0, 30);
}

Lance killerlance()
{
  return new Lance("KillerLance", 1, 1, 9, 10, 70, 30, 20);
}


Lance javelin()
{
  return new Lance("Javelin", 2, 1, 11, 6, 65, 10, 20);
}

//bows/////////////////////////////////////////////////////////
class Bow extends Weapon
{
  Bow()
  {
    super();
  }
  Bow(String myname, int myrange, int myrank, int myweight, int mymight, int myhit, int mycrit, int myuses)
  {
    super();
    name = myname;
    range = myrange;
    rank = myrank;
    weight = myweight;
    might = mymight;
    hit = myhit;
    critical = mycrit;
    uses = myuses;
  }
}

Bow ironbow()
{
  return new Bow("IronBow", 2, 1, 5, 6, 85, 0, 45);
}

Bow shortbow()
{
  return new Bow("ShortBow", 2, 1, 3, 5, 85, 10, 25);
}

Bow longbow()
{
  return new Bow("LongBow", 3, 1, 10, 5, 65, 0, 20);
}

Bow killerbow()
{
  return new Bow("KillerBow", 2, 1, 7, 9, 75, 30, 20);
}

Bow silverbow()
{
  return new Bow("SilverBow", 2, 1, 6, 13, 75, 0, 20);
}

//monsterweapons////////////////////////////////////////////////////////


class Claw extends Weapon
{
  Claw(String myname, int myrange, int myrank, int myweight, int mymight, int myhit, int mycrit, int myuses)
  {
    super();
    name = myname;
    range = myrange;
    rank = myrank;
    weight = myweight;
    might = mymight;
    hit = myhit;
    critical = mycrit;
    uses = myuses;
  }
}
/////////////////////////////////////////////////////////////////
Claw rottenclaw()
{
  return new Claw("RottenClaw", 1, 1, 8, 7, 80, 0, 100);
}


Claw sharpclaw()
{
  return new Claw("SharpClaw", 1, 1, 14, 14, 65, 0, 100);
}

Claw fetidclaw()
{
  return new Claw("FetidClaw", 1, 1, 10, 12, 75, 0, 100);
}


