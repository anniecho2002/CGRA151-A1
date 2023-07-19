size(500,500);
background(127);
stroke(0);
strokeWeight(1);
fill(255);
int row = 25;
float x = 0.0;
int step = 5;

for (int i=0; i<row; i++){ 
  for (int j=0; j<30; j++){
    float randomWidth = random(0,30);
    rect(x, (height/row)*i, randomWidth, height/row);
    x = x+randomWidth+step;
  }
  x = 0;
}
