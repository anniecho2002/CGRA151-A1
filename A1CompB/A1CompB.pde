size(500,500);
background(127);
stroke(0);
strokeWeight(1);
fill(255);
for (int i=0; i<150; i++){
  float p1 = random(0,500);
  float p2 = random(0,500);
  triangle(p1, p2, 
           p1 + random(-100,100), p2 + random(-100,100), 
           p1 + random(-100,100), p2 + random(-100,100));
}
