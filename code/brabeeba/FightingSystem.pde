
class FightingSystem {
  float[] hue;
  int c=300;
  FightingSystem() {
    hue= new float [int(c)];
    for (int i=0;i<c;i++) {
      float amount =map (i, 0, c, 0, PI/2);
      hue[i]=abs(cos(amount));
    }
  }
  void draw(int a, int b, int c, int d, int t, int e, int f) {
    colorMode(HSB);
    for (int i=0; i<300;i++) {       
      if (10*i>(1000-b)*3) { 
        stroke(0, 255, hue[i]*255/2);
        line(25+i, 30, 55+i, 45);
      }
      if (10*i>(1000-a)*3) { 
        stroke(0, 255, hue[i]*255);
        line(25+i, 30, 55+i, 45);
      }
      if (10*i>(1000-d)*3) {
        stroke(0, 255, hue[i]*255/2);
        line(775-i, 30, 745-i, 45);
      }
      if (10*i>(1000-c)*3) {
        stroke(0, 255, hue[i]*255);
        line(775-i, 30, 745-i, 45);
      }
    }
    numberDisplay(t, 348, 15, 80);
    for (int i=0; i<200;i++) {       
      if (3*i>(300-e)*2) { 
        stroke(150, 255, hue[i]*255);
        line(25+i, 535, 25+i, 565);
      }
      if (3*i>(300-f)*2) {
        stroke(150, 255, hue[i]*255);
        line(775-i, 535, 775-i, 565);
      }
    }
  }
}
