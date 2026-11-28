class Fish{

PVector position,velocity;

int lane = int(random(1,4));//creates 3 lanes for the fish that are exact numbers


Fish(){//fish constructor
  position = new PVector();//vector for position
  velocity = new PVector();//vector for speed
  println(lane);
    //Fish spawning lanes
  if(lane == 1){//create the three possible fish spawns and speed
    position.y = 200;
    position.x = 50;
    velocity.x = 3;
  }
   if(lane == 2){//lane 2
    position.y = 275;
    position.x = 50;
    velocity.x = 5;
  }
   if(lane == 3){//lane 3
    position.y = 350;
    position.x = 50;
    velocity.x = 7;
  }
}//end of lane if

void moveFish(){//makes the fish swim around
  
  position.x = position.x + velocity.x;// add speed
  
  if(position.x >= 380 || position.x <= 20 ){
    velocity.x = velocity.x * -1;//bounce off certain area not window
  }

}// end of move fish

void displayFish() {

  if(velocity.x < 0){//checks what direction fish is moving 
  fill(255,215,0);
  ellipse(position.x,position.y,30,15);
  triangle(position.x+5,position.y, position.x+25,position.y+12,position.x+25,position.y-12);
  fill(75);
  ellipse(position.x-7,position.y,7,7);
  } else{//changes sprite when swimming left
      
    fill(255,215,0);
  ellipse(position.x,position.y,30,15);
  triangle(position.x-5,position.y, position.x-25,position.y-12,position.x-25,position.y+12);
  fill(75);
  ellipse(position.x+7,position.y,7,7);
  
  }//end of else and if
  
}// end of display fish




















}// end of fish class
