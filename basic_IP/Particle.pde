class Particle {
  float x;
  float y;
  float vx;
  float vy;

  float a;
  float speed;

  boolean flag = false;

  Particle() {


    x = (width)/2;
    y = (height)/2;
    a = random(TWO_PI); 
    speed = random(1, 4);
    vx = cos(a)*speed;
    vy = sin(a)*speed;
  }

  void display() {

    noStroke();
    color c = bird.get(int(x), int(y));
    fill(c, 15);


    ellipse(x, y, 8, 8);
  }

  void update() {
    if (flag == false) {
      a += PI/90; 
      vx = cos(a)*speed;
      vy = sin(a)*speed;
      x = x+vx;
      y = y+vy;
      speed *= 1.001;
    } else {
      x = x+vx;
      y = y+vy;
    }

    if (x > width || x < 0) {
      flag = true;
      vx *= -1;
    } else if (y > height || y < 0) {
      flag = true;
      vy *= -1;
    }
  }
}
