class Particle {
  float x, y;
  Particle() {
    //translate(width/2, height/2);
    x = width/2;
    y = height/2;
  }

  void walk() {
    int choice = int(random(4));
    if (choice == 1) {
      x++;
    } else if (choice == 2) {
      x--;
    } else if (choice == 0) {
      y++;
    } else {
      y--;
    }
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }

  void display() {
    color c = color(random(255), 0, random(255));
    stroke(c);
    point(x, y);
  }
}
