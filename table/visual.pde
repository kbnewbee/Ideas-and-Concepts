class Visual {
  float x, y, d;

  Visual(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }

  void display() {
    stroke(0);
    fill(255, 0, 0,25);
    ellipse(x, y, d*0.1, d*0.1);
    println(x, y, d);
  }
}
