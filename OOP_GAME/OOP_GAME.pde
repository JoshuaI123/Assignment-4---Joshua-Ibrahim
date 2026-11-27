//Variable Things

boolean isShot = false;
boolean isReturning = false;
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
  
  if(isShot == true){// shoots the hook towards the clicked mouse position
    if(hookX + 190 < clickLocatX){
    hookX = hookX + 2;// X speed of the hook
    }
    if(hookY + 78 < clickLocatY){
    hookY = hookY + 3;// Y speed of hook
    }
      if(hookX + 190 > clickLocatX){
    hookX = hookX - 2;
    }
    if(hookY + 78 > clickLocatY){
    hookY = hookY - 3;
    }  
    
    
    //sets the hook from shooting to returning mode
    if((hookX + 190 >= clickLocatX-2) && (hookY+100 >= clickLocatY-3) ){
    isShot = false;
    isReturning = true;
  }
}// end of shoot if

if (isReturning == true){
 
  if(hookX  > 0){//makes the hook return back to its og placement
    hookX = hookX - 2;
    }
    if(hookY  > 0){
    hookY = hookY - 3;
    }
      if(hookX < 0){
    hookX = hookX + 2;
    }
    if(hookY < 0){
    hookY = hookY + 3;
    }  
}// end of return if

}//end of draw

void mousePressed(){
  
clickLocatX = mouseX;
clickLocatY = mouseY;
isShot = true;
  
}
