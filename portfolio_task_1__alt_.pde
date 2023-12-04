float vX;
float vY;
float randomVehicleWidth; // randomising the width of vehicle

void setup() {
  size(800,500);
  randomVehicleWidth = random(110,200); // vehicle width varies between 110 and 199px wide
  vX = width/2;
  vY = height/2;
}

void draw() {
  background(255);
  stroke(0,255,0);
  fill(119,211,115);
  rect(0,450,2000,400); // grass
  stroke(150);
  fill(150);
  rect(0,350,2000,50); // road
  stroke(98,201,255);
  fill(98,201,255);
  rect(0,0,2000,500); // sky
  stroke(255);
  fill(234,242,17);
  ellipse(0,0,200,200); // sun
  stroke(16,167,8);
  fill(16,167,8);
  triangle(50,270,75,180,100,270); // tree
  stroke(16,167,8);
  fill(16,167,8);
  triangle(80,290,110,170,140,290); // big tree
  stroke(16,167,8);
  fill(16,167,8);
  triangle(500,290,530,100,560,290); // third tree
  stroke(95,67,6);
  fill(95,67,6);
  rect(700,230,100,100); // house
  stroke(188,133,13);
  fill(188,133,13);
  triangle(650,180,700,110,750,180); // roof of house
  
  stroke(255,67,167);
  fill(255,67,167);
  quad(vX-50,vY, vX,vY, vX+25,vY+25, vX-75,vY+25);
  rectMode(CENTER);
  stroke(255,67,167);
  rect(vX-25,vY+37,randomVehicleWidth,25);
  stroke(255);
  fill(255);
  ellipse(vX-50,vY+50,25,25); // position of wheel
  stroke(255);
  fill(255);
  ellipse(vX-2,vY+50,25,25);
  vX = mouseX;
  vY = mouseY;
  
}
