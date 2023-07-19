void setup(){
  size(500,500);
}

void draw(){
  background(127);
  stroke(0);
  strokeWeight(1);
  
  if (mousePressed){
    fill(255,0,0);
    circle(mouseX, mouseY, 100);
  }
  else{
    fill(0,0,255);
    circle(mouseX, mouseY, 100);
  }
  
}
