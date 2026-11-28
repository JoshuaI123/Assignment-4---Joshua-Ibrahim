Fish fish; 


//SETUP

void setup(){
  size(400,400);
 
  pixelDensity(2);
  
  //make a fish
  fish = new Fish();
  
}//end of setup

//Draw

void draw(){
   background(70,100,200);
  //Draws the boat 
  noStroke();
  fill(200);
  rect(190,30,20,30);
  fill(255,100,100);
  ellipse(200,0,200,75);
  //draw the classes
fish.moveFish();
  fish.displayFish();
 
}//end of draw
