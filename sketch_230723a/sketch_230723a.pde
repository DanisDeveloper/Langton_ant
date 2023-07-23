Agent agent;

boolean[][] field;

void setup() {
  size(900, 900);
  frameRate(144);
  background(50);

  agent = new Agent();

  field = new boolean[width / agent.w][height / agent.w];
  agent.x = field[0].length/2;
  agent.y = field.length/2;
  //field[agent.y][agent.x] = true;
}

void draw() {
  
  //for(int i=0;i<field.length;++i){
  //  for(int j=0;j<field[i].length;++j){
  //    if(field[i][j]) fill(255);
  //    else fill(0);
  //    rect(j*agent.w,i*agent.w,agent.w,agent.w);
  //  }
  //}
  agent.display();
  agent.step();

  //delay(1000);
}
