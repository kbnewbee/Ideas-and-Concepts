//background(0);

//Table table = loadTable("bike.csv", "header");
//TableRow row = table.getRow(0);

//float lat = row.getFloat("start station latitude");
//String s = row.getString("start station name");
//println(lat);

Table table,temp;
Visual[] vis;

void setup() {
  size(600, 600);
  //background(255);
  table = loadTable("bike.csv", "header");
 
  temp = loadTable("temp.csv", "header");
  vis = new Visual[temp.getRowCount()];
}

void draw() {

  background(0);
  //vis[0] = new Visual(10, 10, 50);
  //vis[0].display();

  for (int i = 0; i < temp.getRowCount(); i++) {
    TableRow tr = temp.getRow(i);

    float x = (tr.getFloat("start station latitude")+tr.getFloat("end station latitude"))/2;
    float y = -1*(tr.getFloat("start station longitude") +tr.getFloat("start station longitude"))/2;
    float d = tr.getFloat("tripduration");
    vis[i] = new Visual(x, y, d);
    vis[i].display();
    //println(x, y, d);
  }
  noLoop();
}
