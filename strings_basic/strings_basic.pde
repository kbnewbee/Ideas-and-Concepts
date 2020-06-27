
//PFont f = createFont("Geogia", 64);
//println(PFont.list());
//String s = "Never too late and positive Energy. ";
//textFont(f);
//textSize(64);
//text(s, 10, 100);

//float x = 10; 
//for (int i=0; i< s.length(); i++) {
//  char c = s.charAt(i);
//  fill(random(50,255));
//  textSize(random(30,64));
//  text(c, x, 300);
//  x = x + textWidth(c);
//}

//String s = "100,90,60,6,5,;20";
//String[] nums = splitTokens(s, ",;");
//int[] vals = int(nums);
//for (int i= 0; i<vals.length; i++) {
//  println(vals[i]);
//}

int index = 0;
String[] words;
void setup() {
  size(600, 400);
  background(0);
  String[] lines = loadStrings("shakes.txt");
  String all = join(lines, " ");
  words = splitTokens(all, ".,:;? " );
  printArray(words);
  //println(all);
  frameRate(5);
}

void draw() {
  background(0);
  fill(255);
  textSize(64);
  textAlign(CENTER);
  text(words[index].toLowerCase(), width/2, height/2);
  index++;
}
