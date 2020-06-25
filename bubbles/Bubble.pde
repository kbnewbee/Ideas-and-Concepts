class Bubble {
  float x;
  float y;
  float diam;
  PImage img;
  
  Bubble(PImage timg, float tx, float tempd) {
    x=tx;
    y=height;
    diam=tempd;
    img = timg;
  }

  void ascend() {
    y--;
    x=x+random(-2, 2);
  }

  void display() {
    //stroke(0);
    //fill(127);
    //ellipse(x, y, diam, diam);
    imageMode(CENTER);
    image(img,x,y,diam,diam);
    
     
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
