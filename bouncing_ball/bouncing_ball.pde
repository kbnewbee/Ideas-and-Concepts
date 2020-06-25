float x=0,y=0,xspeed=2,yspeed=1;

void setup() {
  size(320, 240);
}

void draw() {
  background(51);
  //stroke(255);
  //fill(0,250,0);
  //beginShape(); 
  //vertex(25,25);
  //vertex(200,150);
  //vertex(100,60);
  
  //endShape(CLOSE);
  displayBall();
  moveBall();
  checkEdges();
}


void displayBall() {
  stroke(0);
  fill(0,250,0);
  ellipse(x,y,32,32);
}
void moveBall() {
  x+=xspeed; 
  y+=yspeed;
}
void checkEdges(){
  if(x>width || x<0){
    xspeed*=-1;
  }
  if(y>height || y<0){
    yspeed*=-1;
  }
}
