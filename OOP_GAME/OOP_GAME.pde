ArrayList<Fish> fishies = new ArrayList<Fish>();


//SETUP

void setup() {
  size(400, 400);

  pixelDensity(2);

  //make a 5 fish ARRAYLIST
  for (int i = 0; i < 6; i = i+1) {

    Fish madeFish = new Fish();

    for (int check = 0; check < fishies.size(); check = check+1) {//checks position of fish between each fish

      //checks position of each fish compared to the others
      
      if (dist(madeFish.position.x, madeFish.position.y, fishies.get(check).position.x, fishies.get(check).position.y)<40) {
        
        madeFish.velocity.x = madeFish.velocity.x *-1;//
        madeFish.position.x = madeFish.position.x + 20;//        
        
      }//end of if dist
      

      
    }//end of check loop
          fishies.add(madeFish);//creates 5 lil fishies
  }//end of i loop
}//end of setup

//Draw

void draw() {
  background(70, 100, 200);
  //Draws the boat
  noStroke();
  fill(200);
  rect(190, 30, 20, 30);
  fill(255, 100, 100);
  ellipse(200, 0, 200, 75);

  //draw the Arraylist of fishies

  for (int i = 0; i < fishies.size(); i = i+1) {//


    Fish myFishies = fishies.get(i);

    myFishies.moveFish();
    myFishies.displayFish();
  }//end of for loop
}//end of draw
