// Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX,albumCoverY, albumCoverWidth, albumCoverHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
color backgroundColour, darkBackground=0, whiteBackground=255; 
color foregroundColour;
color white=255, yellow=#FFFF00, black=0, purple=#FF00FF; //Hexidecimal, see Tools / Colour selector
Boolean whiteMode=false;
//
void setup()  {
  println("HelloWorld");
  //Concatenation & Inspecting Variabes with Character Escapes
  println("Width: "+width+"\tHeight: "+height+"\t\tDisplay Width: "+displayWidth+"\tDisplay Height: "+displayHeight);
  //NULL: all values are NULL until size(), arithmetic errors
  println("Example Formula: add 1000 to the width", width+1000); 
  //
  //Display: CANVAS
  size(400, 500); //width, height 
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  //println(appWidth, appHeight);
  //Display Geometry: Landscape, Portrait, Square
String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "5 secs left to turn your phone before self destructuion" ;
println(displayInstructions);
  //
  //Poplulate
  backgroundX = appWidth*1/3;
  backgroundY = appHeight*1/2;
  backgroundWidth  = appWidth*1/5;
  backgroundHeight = appHeight*1/3;
  albumCoverX = appWidth*1/6;
  albumCoverY = appHeight*1/5;
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
  
  

  //Layout DIVs
 //rect(X, Y, Width, Height);
   rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
   int centerX = appWidth*1/2;
   int centerY = appHeight*1/2;
  rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  
  rect(albumCoverX,albumCoverY, albumCoverWidth, albumCoverHeight);
  /*
  rect(FastFowardX,FastFowardY, FastFowardWidth, FastFowardHeight);
  rect(RewindX,RewindY, RewindWidth, RewindHeight);
  rect(PauseX,PauseY, PauseWidth, PauseHeight);
  rect(volumeX,volumeY, volumeWidth, volumeHeight);
  rect(timeprogressX,timeprogressY, timeprogressWidth, timeprogressHeight);
  rect(RestartX,RestartY, RestartWidth, RestartyHeight);
  rect(PlayButtonX,PlayButtonY, PlayButtonWidth, PlayButtonHeight);
  */
  //Var Population
  //if ( hour() >=9 && hour()<=17 ) backgroundColour = whiteBackground ;
  //if ( hour() <9 && hour()>17 ) backgroundColour = darkBackground ;
  println(whiteMode);
if ( whiteMode==true && hour()>=9 && hour()<=17 ) {
    backgroundColour = whiteBackground;
    foregroundColour = #FFFFFF;
  } else {
     backgroundColour = darkBackground;
    foregroundColour = yellow; //Note: if(hour()<9&&hour()>17) 
    if ( hour()>=9 && hour()<=17 ) foregroundColour = white;
  }
  //

} //End setup
//
void draw() {
  background(backgroundColour);
  fill(foregroundColour);
  //
  //Quit Button
  //fill(purple);
  //if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )fill(yellow);
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) 
     rect(quitButtonX+quitButtonWodth*1/7, quitButtonY, quitButtonWidth*5/7, quitButtonHeight);
     fill(foregroundColour); //Reset Default
     fill(yellow);
  } else {
    fill(purple);
  }
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(foregroundColour);
  println(mouseX, mouseY);
//
} //End draw
//
void keyPressed() { //Listener
   if (key=='Q'|| key=='q') exit();
   if (keyCode==CODED && keyCode==UP) exit();
   if (key=='W'|| key=='w') ;
} //End keyPressed
//
void mousePressed() { //Listener
  //QUIT
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
  { 
    exit();
  }
} //End mousePressed
//
// End MAIN Program
