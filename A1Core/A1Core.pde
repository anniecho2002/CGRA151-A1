size(500,500);
background(255);

// the blue rectangle
fill(0,0,255);
rect(50, 50, 200, 100);

fill(255, 255, 0);
beginShape();
vertex(300,100); //starts at left
vertex(350,100); // goes right
vertex(350,50); // goes up
vertex(450,125); // diagonal to the point
vertex(350,200); // goes diagonal back down
vertex(350,150); // back up
vertex(300,150); // to the left
endShape(CLOSE);

// the green ellipse
fill(0, 255, 0);
ellipse(150, 250, 200, 100);

// red triangle
fill(255,0,0);
triangle(50, 400, 150, 350, 250, 450);

// lines
strokeWeight(5);
stroke(255,120,0); //orange
line(300, 250, 350, 450);
stroke(0,255,111); //green
strokeWeight(10);
line(350, 250, 400, 450);
stroke(140,0,255); //purple
strokeWeight(15);
line(400, 250, 450, 450);
