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

