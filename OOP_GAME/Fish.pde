class Fish{

PVector position,velocity;



Fish(float x, float y){
  position = new PVector(x,y);
  velocity = new PVector(x,y);
  velocity.x = random(1,3);// gives fish a random set speed
}

void moveFish(){
  
  if(velocity.x == 1){// move at this speed if your given 1
    velocity.x = 4;
  }
  if(velocity.x == 2){// move at this speed if your given 2
    velocity.x = 6;
  }
  if(velocity.x == 3){// move at this speed if your given 3
    velocity.x = 8;
  }
}




















}// end of fish class
