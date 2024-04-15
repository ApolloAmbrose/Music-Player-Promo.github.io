// Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX,albumCoverY, albumCoverWidth, albumCoverHeight;
float PlayButtonX,PlayButtonY, PlayButtonWidth, PlayButtonHeight;
//
color backgroundColour, darkBackground, whiteBackground;
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
  darkBackground =  0; //Gray Scale, much smaller than COLOR  
  whiteBackground = 255; //Gray Scale, much smaller than COLOR
  //whiteMode = true;
  //if ( hour() >=9 && hour()<=17 ) backgroundColour = whiteBackground ;
  //if ( hour() <9 && hour()>17 ) backgroundColour = darkBackground ;
  if (hour() >=9 && hour()<=17) {backgroundColour = whiteBackground;} else {backgroundColour = darkBackground;}
  //
} //End setup
//
void draw() {
  background(backgroundColour); //Grayscae
  //rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed () {
} //End mousePressed
//
// End MAIN Program
