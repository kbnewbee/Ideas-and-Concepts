Bubble b;
Bubble b1;
Particle p;
Particle p1;

Bubble[] bubbles= new Bubble[1000];

void setup() {
  size(640, 360);
  //bubbles[0]=new Bubble(64);
  //bubbles[1]=new Bubble(30);
  for (int i=0; i<bubbles.length; i++) {
    bubbles[i]=new Bubble(64);
  }
  //p=new Particle(100, 100, 64);
  //p1=new Particle(100, 100, 100);
}
void draw() {
  background(0);

  //  p.overlaps(p1);

  //  p1.x=mouseX;
  //  p1.y=mouseY;

  //  p.display();
  //  p1.display();
  for (int i=0; i<bubbles.length; i++) {

    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
  //b1.display();
  //b1.ascend();
  //b1.top();
}

//void mousePressed(){
//  b.burst( );
//}
