void numberDisplay(int t, int a, int b, int displayX ) {
  int displayY=2*displayX/3;
  noStroke();
  if (t%10==1) {
    rect(a+(17*displayX/21), b+(displayY/10), displayX/21, displayY*4/5);
  }
  if ((t%100)-(t%10)==10) {
    rect(a+(17*displayX/21)-(displayX/3), b+(displayY/10), displayX/21, displayY*4/5);
  }
  if ((t%1000)-(t%100)==100) {
    rect(a+(17*displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, displayY*4/5);
  }
  if (t%10==2) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==2) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==20) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==200) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==3) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==30) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==300) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==4) {
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==40) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==400) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==5) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==50) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==500) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==6) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==60) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==600) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, 
    displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, 
    displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/
    10+(displayX/42));
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 
    4*displayY/10);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==7) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==70) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==700) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
  }
  if (t%10==8) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==80) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==800) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if (t%10==9) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==90) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%1000)-(t%100)==900) {
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/2)-(displayX/42), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(2*displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21)-(2*displayX/3), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if (t%10==0) {
    rect(a+(21*displayX/30), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
  if ((t%100)-(t%10)==0&&t>=99) {
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(9*displayY/10)-(displayX/21), 8*displayX/30, displayX/21);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/10), displayX/21, 4*displayY/10+(displayX/42));
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(21*displayX/30)-(displayX/3), b+(displayY/2), displayX/21, 4*displayY/10);
    rect(a+(29*displayX/30)-(displayX/3)-(displayX/21), b+(displayY/10), displayX/21, 4*displayY/10);
  }
}
