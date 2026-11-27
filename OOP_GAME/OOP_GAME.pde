


//SETUP

void setup(){
  size(400,400);
  background(70,100,200);
  pixelDensity(2);
}//end of setup

//Draw

void draw(){
  //Draw the boat 
  noStroke();
  fill(200);
  rect(190,30,20,30);
  fill(255,100,100);
  ellipse(200,0,200,75);
  
  //Draw hook
  //draw fishy
  fill(255,215,0);
  ellipse(200,200,30,15);
  triangle(190,200,170,185,180,215);
  fill(75);
  ellipse(210,197,7,7);
}//end of draw
