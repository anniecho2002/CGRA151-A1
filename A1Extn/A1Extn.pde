void setup(){
  size(750,500);
  frameRate(100);
}

float size2 = 440;
float x1 = size2/2; // left circle start
float x2 = 530; //right circle start
int runCount = 0;
float speed = 0;
float colors = 0;

void draw(){
  speed = map(mouseX, 0, width, -50, 50);
  colors = map(mouseY, 0, height, 0, 100);
  float frequency = .05; // for the rainbow
  float red   = sin(frequency*runCount + 0) * 25 + 230;
  float green = sin(frequency*runCount + 2*PI/3) * 25 + 230;
  float blue  = sin(frequency*runCount + 4*PI/3) * 25 + 230;
  background(red, green, blue);
    
  strokeWeight(10);
  int size = 440; // size of the biggest circle
  
  //drawing circle
  drawCircle1(size);
  x1 = x1+2;
  drawCircle2(size);
  x2 = x2-2;
  runCount++;
}

// draws the left starting circle
void drawCircle1(float size){
  noFill();
  for (int i=0; i<22; i++){
    setColor(i, 0.3);
    // sets random color
    
    if ((x1+220)%width == 0){
      x1 = 220;
    }
    circle(x1%width, height/2, size);
    size = size - speed;
   
  }
}

// draws the right starting circle
void drawCircle2(float size){
  noFill();
  for (int i=0; i<22; i++){
    setColor(i, 0.3); // sets random color
    
    if ((x2-220)%width == 0){
      x2 = 530;
    }
    circle(x2%width, height/2, size);
    size = size - speed;
  }
}

// sets the colour stroke for the circles
void setColor(int i, float frequency){
    float red   = sin(frequency*i + 0) * 127 + 128;
    float green = sin(frequency*i + 2*PI/3) * 127 + 128;
    float blue  = sin(frequency*i + 4*PI/3) * 127 + 128;
    stroke(red + colors, green + colors, blue + colors, 150);
}
