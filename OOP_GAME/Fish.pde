class Fish{

PVector position,velocity;

float lane = random(1,3);


Fish(float x, float y){
  position = new PVector(x,y);
  velocity = new PVector(x,y);
  velocity.x = random(1,3);// gives fish a random set speed
  
    //Fish spawning lanes
  if(lane == 1){//create the three possible fish spawns
    position.y = 200;
  }
   if(lane == 2){
    position.y = 250;
  }
   if(lane == 3){
    position.y = 300;
  }
}

void moveFish(){
  //SPEED OPTIONS
  if(velocity.x == 1){// move at this speed if your given 1
    velocity.x = 4;
  }
  if(velocity.x == 2){// move at this speed if your given 2
    velocity.x = 6;
  }
  if(velocity.x == 3){// move at this speed if your given 3
    velocity.x = 8;
  }
}// end of move fish

void displayFish() {

  fill(255,215,0);
  ellipse(position.x,position.y,30,15);
  triangle(position.x ,position.y, position.x,position.y,position.x,position.y);
  fill(75);
  ellipse(210,197,7,7);
  
}// end of display fish




















}// end of fish class
