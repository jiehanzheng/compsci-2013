

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

