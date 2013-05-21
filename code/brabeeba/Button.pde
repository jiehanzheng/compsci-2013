class Button {
  int t;
  int color1;
  PImage character;
  float[] hue;
  float a, b, c, d; 
  Boolean onButton, clickButton;
  Button(float a, float b, float c, float d, PImage character) {
    this.a=a;
    this.b=b;
    this.c=c;
    this.d=d;
    this.character=character;
    hue= new float [int(c)];
    for (int i=0;i<c;i++) {
      float amount =map (i, 0, c, 0, PI);
      hue[i]=abs(cos(amount));
    }
  }
  void draw(boolean onButton, int color1) {
    this.color1=color1;
    this.onButton=onButton;
    t+=2;
    noStroke(); 
    image(character, a, b, c, d);
    colorMode(HSB);
    if (onButton==true) {
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a+i, b, a+i, b+d/12);
      }
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a+i, b+(d*11/12), a+i, b+d);
      }
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a, b+i, a+c/12, b+i);
      }
      for (int i=0; i<c;i++) {
        stroke(color1, 256, (hue[i]*255+t) % 255);
        line(a+(c*11/12), b+i, a+c, b+i);
      }
    }
  }
}
