//Variable Things

boolean isShot = false;
float hookX,hookY;
float clickLocatX,clickLocatY;

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
  rect(175,30,30,45);
  fill(255,100,100);
  ellipse(200,10,700,75);
  
  //Draw hook
  stroke(10);
  line(190,78,hookX+190,hookY+78);
  fill(200);
  triangle(hookX + 160,hookY+75, hookX+190,hookY+100, hookX+220,hookY+75);
  
  if(isShot == true){
    if(hookX + 190 < clickLocatX){
    hookX = hookX + 2;
    }
    if(hookY + 78 < clickLocatY){
    hookY = hookY + 2;
    }
      if(hookX + 190 > clickLocatX){
    hookX = hookX - 2;
    }
    if(hookY + 78 > clickLocatY){
    hookY = hookY - 2;
    }  
    
    
    //Take hook back to start
    if((hookX + 190 == clickLocatX) && (hookY+78 == clickLocatY) ){
    hookX = 0;
    hookY = 0;
  }
}

}//end of draw

void mousePressed(){
  
clickLocatX = mouseX;
clickLocatY = mouseY;
isShot = true;
  
}
