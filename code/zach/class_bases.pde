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

