
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

