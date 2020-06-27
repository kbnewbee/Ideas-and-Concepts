String[] words;
IntDict con;
int y = 10;

void setup() {
  size(600, 1400);
  background(0);

  String[] lines = loadStrings("shakes.txt");
  String all = join(lines, " ");
  words = splitTokens(all, ".,:;?'()[]! " );

  //printArray(words);

  con = new IntDict();
  for (int i =0; i<words.length; i++) {
    con.increment(words[i].toLowerCase());
  }
  con.sortValuesReverse();
  //println(con);
}

void draw() {
  background(0);
  String[] keys = con.keyArray();
  for (int i= 0; i< keys.length; i++) {
    int count = con.get(keys[i]);
    //println(keys[i], count);

    fill(255);
    noStroke();
    rect(0, y, count, 10);
    y = y+11;

    textSize(10);
    text(keys[i], count+10, y);
    text(count, count + 50, y);
  }

  noLoop();
}
