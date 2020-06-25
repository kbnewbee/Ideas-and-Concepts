class Bubble {
  float x;
  float y;
  float diam;
  Bubble(float tempd) {
    x=width/2;
    y=height;
    diam=tempd;
  }

  void ascend() {
    y--;
    x=x+random(-5,5);
  }

  void display() {
    stroke(0);
    fill(127);
    ellipse(x, y, diam, diam);
  }
  void burst() {
    stroke(0);
    fill(0, 255, 0);
    ellipse(x, y, 32, 32);
  }
  void top() {
    if (y<diam/2) {
      y=diam/2;
    }
  }
}
