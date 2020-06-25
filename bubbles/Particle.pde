class Particle {
  float x;
  float y;
  float r;
  color col;

  Particle(float tx, float ty, float tr) {
    x=tx;
    y=ty;
    r=tr;
    col =color(0);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    fill(col);
    ellipse(x, y, r*2, r*2);
  }

  void overlaps(Particle p) {
    float d= dist(x, y, p.x, p.y);
    if (d< r+p.r) { 
      col=color(0,255,0,100);
     p.col= color(255,0,0,100);
    } else {
      p.col = color(0);
    }
  }
}
