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

