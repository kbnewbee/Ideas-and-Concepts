class Ball {
  PVector loc;
  PVector vel;
  PVector acc;

  color c;
  float tx, ty;

  Ball() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    acc = new PVector(0.01, 0);

    tx = 0;
    ty = 0;
    c = color(random(255), random(255), random(255));
  }

  void displayBall() {
    stroke(0);
    fill(c);
    ellipse(loc.x, loc.y, 32, 32);
  }

  void moveBall() {
    //acc = PVector.random2D();

    //mouse conrolled acceleration
    //tx = mouseX;
    //ty = mouseY;

    //tx = map(tx, 0, width, -0.5, 0.5);
    //ty = map(ty, 0, height, -0.5, 0.5);
    //acc = new PVector(tx, ty);

    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(loc);
    float mag = map(mouse.mag(), 0, 2*width, 0.5, 0.01 );
    mouse.setMag(mag);
    acc = mouse;

    //perlin noise
    //tx = tx + random(-0.01, 0.01);
    //ty = ty + random(-0.01, 0.01); 
    //float nx = noise(tx);
    //float ny = noise(ty);
    //acc = new PVector(nx, ny);

    vel.add(acc);
    loc.add(vel);

    vel.limit(10);
  }

  void checkEdges() {
    if (loc.x > width) {
      c = color(random(255), 0, random(255));
      loc.x = 0;
    }
    if (loc.x < 0) {
      c = color(random(255), 0, random(255));
      loc.x = width;
    }
    if (loc.y < 0) {
      c = color(random(255), 0, random(255));
      loc.y = height;
    }
    if (loc.y>height) {
      c = color(random(255), 0, random(255));
      loc.y = 0;
    }
  }
}
