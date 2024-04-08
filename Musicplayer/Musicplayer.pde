// Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX,albumCoverY, albumCoverWidth, albumCoverHeight;
float PlayButtonX,PlayButtonY, PlayButtonWidth, PlayButtonHeight
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
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth  = appWidth;
  backgroundHeight = appHeight;
  albumCoverX = appWidth*0;
  albumCoverY = appHeight;
  albumCoverWidth = appWidth;
  albumCoverHeight = appHeight;
  //Layout DIVs
 //rect(X, Y, Width, Height);
   rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
   int centerX = appWidth*1/2;
   int centerY = appHeight*1/2;
  rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  
  rect(albumCoverX,albumCoverY, albumCoverWidth, albumCoverHeight);
  
  rect(FastFowardX,FastFowardY, FastFowardWidth, FastFowardHeight);
  rect(RewindX,RewindY, RewindWidth, RewindHeight);
  rect(PauseX,PauseY, PauseWidth, PauseHeight);
  rect(volumeX,volumeY, volumeWidth, volumeHeight);
  rect(timeprogressX,timeprogressY, timeprogressWidth, timeprogressHeight);
  rect(RestartX,RestartY, RestartWidth, RestartyHeight);
  rect(PlayButtonX,PlayButtonY, PlayButtonWidth, PlayButtonHeight);
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed () {
} //End mousePressed
//
// End MAIN Program
