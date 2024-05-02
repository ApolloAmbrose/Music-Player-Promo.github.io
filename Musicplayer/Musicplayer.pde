
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim; //creates object to access all functions
AudioPlayer soundEffects1;
AudioPlayer playlist1; 
//
int appWidth, appHeight;
int size;
PFont generalFont;
String quit="QUIT";
//
color backgroundColour, darkBackground=0, whiteBackground=255;  //Gray Scale, note much smaller than COLOR
color foregroundColour;
color white=255, yellow=#FFFF00, black=0, purple=#FF00FF; //Hexidecimal, see Tools / Colour selector
Boolean dayMode=false; //App starts in night mode
Boolean lightMode=false; //Dark mode starts App , null possible if UER preferences made
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
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "self desruction in 5 seconds";
  println(displayInstructions);
  //
  minim = new minim(this);
  String extension = ".mp3";
  String quitButtonSound = "CarDoorClosing";
  String pathwaySoundEffects = "../AudioSound effects"; //Relative Path;
  //println( pathwaySoundEffects+quitButtonSound+extension );
  String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  //println( path );
  soundEffects1 = minim.loadFile( path );
  //playList1 = minim.loadFile( path );
  //
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Harrington", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
  // Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
  //
  
  
  

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
  soundEffects1.loop(1); 
  delay(2500); //parameter: milliseconds
  exit();
} //End setup
//
void draw() {
  background(backgroundColour);
  fill(foregroundColour);
  //
  //Quit Button
  //fill(purple);
  //if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) fill(yellow);
  fill(purple);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    fill(yellow);
    rect( quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7);
  } else {
    fill(purple);
  }
  fill(foregroundColour); //Resetting the Defaults
  //Quit, Text
  fill(foregroundColour); //Ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
   size = appHeight*1/23; // Var based on ratio of display
  textFont(generalFont, size;*1/23);
  text(quit, quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7); //Inside rect() above
  fill(foregroundColour); //Resetting the Defaults
  //

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
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
  { 
    soundeffect_1();
  }
} //End mousePressed
//
void soundeffect_1() {
  int loop0nce = 0;
  int timeForSoundEffect1 = 2650; //parameter: milliseconds
soundEffects1.loop(loop0nce);
delay(timeForSoundEffect1); 
exit();
}  // End soundeffect_1()
// End MAIN Program
