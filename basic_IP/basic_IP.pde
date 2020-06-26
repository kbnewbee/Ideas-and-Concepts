PImage bird;
Particle[] particles;
int total = 1000;

void setup() {
  size(790, 393);
  particles = new Particle[total];

  for (int i =0; i<particles.length; i++) {
    particles[i] = new Particle();
  }


  bird = loadImage("bird.jpg");
  background(0);
}

void draw() {

  //background(0);
  for (int i =0; i<particles.length; i++) {
    particles[i].display();
    particles[i].update();
  }



  //randomly appearing the photo with balls
  //for (int i=0; i<100; i++) {
  //  float x = random(width);
  //  float y = random(height);

  //  color c = bird.get(int(x), int(y));
  //  fill(c);
  //  noStroke();
  //  ellipse(x, y, 16, 16);
  //}

  //image(bird,0,0);

  //loadPixels();
  //bird.loadPixels();
  //for (int x = 0; x < width-1; x++) {
  //  for (int y = 0; y < height; y++) {

  //    //edge detection algo
  //    int loc1 = x + y*width; 
  //    int loc2 = x+1 + y*width;

  //    float b1 = brightness(bird.pixels[loc1]);
  //    float b2 = brightness(bird.pixels[loc2]);

  //    float diff = abs(b1-b2);
  //    if (diff>20) {
  //      pixels[loc1] = color(0);
  //    } else {       
  //      pixels[loc1] = color(255);
  //    }
  //contrast
  //if (b>mouseX) {
  //  pixels[loc] = color(255,0,0);
  //} else {
  //  pixels[loc] = color(0,255,0);
  //}

  //float r = red(bird.pixels[loc]);
  //float g = green(bird.pixels[loc]);
  //float b = blue(bird.pixels[loc]);

  //pixels[loc] = bird.pixels[loc]/2;

  //brightness
  //pixels[loc] = color(r+mouseX, g+mouseX, b+mouseX) ;

  //torchlight effect
  //float d = dist(mouseX, mouseY, x, y );
  //float fac = map(d, 0, 200, 2, 0);
  //pixels[loc] = color(r*fac, g*fac, b*fac) ;
  //  }
  //}
  //updatePixels();
}
