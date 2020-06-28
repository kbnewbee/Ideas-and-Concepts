Particle p;

void setup() {
  size(600, 600);
  background(255);

  p = new Particle();
}

void draw() {
  for (int i=0; i<1000; i++) {
    p.walk();
    p.display();
  }
}
