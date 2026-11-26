


//SETUP

void setup(){
  size(400,400);

  pixelDensity(2);
}//end of setup

//Draw

void draw(){
    background(70,100,200);
  //Draw the boat 
  noStroke();
  fill(200);
  rect(190,30,20,30);
  fill(255,100,100);
  ellipse(200,0,200,75);
  
  //Draw hook
  fill(0);
  quad(mouseX,150   ,mouseX,125,   mouseX,145,    mouseX, 175);

  
}//end of draw
