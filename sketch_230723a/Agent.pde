class Agent {
  int x;
  int y;
  int speedType = 0;
  int w = 10;

  void step() {
    if (field[y][x]) {
      ++speedType;
    } else {
      --speedType;
    }
    if (speedType < 0) speedType = 3;
    if (speedType > 3) speedType = 0;

    field[y][x] = !field[y][x];

    switch(speedType) {
    case 0:
      --y;
      break;
    case 1:
      ++x;
      break;
    case 2:
      ++y;
      break;
    case 3:
      --x;
      break;
    }
    if (x == -1) x = field[0].length-1;
    if (x == field[0].length) x = 0;
    if (y == -1) y = field.length-1;
    if (y == field.length) y = 0;
  }
  
  void display(){
    stroke(0);
    if(field[y][x]) fill(216,0,255);
    else fill(37,255,0);
    rect(x*w,y*w,w,w);
    
  }
}
