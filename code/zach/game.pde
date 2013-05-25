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

