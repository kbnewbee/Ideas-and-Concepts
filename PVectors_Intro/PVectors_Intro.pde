Ball b;

void setup() {
  size(800, 800);
  b = new Ball();
}

void draw() {
  background(51);
  b.displayBall();
  b.moveBall();
  //b.checkEdges();
}
