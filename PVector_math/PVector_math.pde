void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  fill(0);
  translate(width/2, height/2);
  ellipse(0, 0, 4, 4);

  PVector center = new PVector(width/2, height/2);
  PVector mouse = new PVector(mouseX, mouseY);

  //making vector originating from center to mouse 
  mouse.sub(center);
  //  mouse.mult(5);
  //  println(mouse.mag());

  //normalize makes the magnitude of the vector to 1 of any length
  //mouse.normalize();
  //mouse.mult(50);

  //one line command for above two lines of command
  mouse.setMag(50);

  line(0, 0, mouse.x, mouse.y);
}
