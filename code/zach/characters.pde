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

