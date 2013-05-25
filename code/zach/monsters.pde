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

