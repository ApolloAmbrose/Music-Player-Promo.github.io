/* Documentation 
 Library: use Sketch / Import Library / Add Library / Minim
 Suporting Website: https://code.compartmental.net/minim/
 - https://code.compartmental.net/minim/audioplayer_method_loop.html
 - loop(0) seems best for sound effects
 */
//Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer playList1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer soundEffects1; //"Play List" for Sound Effects
//
int appWidth, appHeight;
//
int size;
PFont generalFont;
String quit="QUIT";

//
color white=255, yellow=#FFFF00, black=0, purple=#FF00FF;
Boolean dayMode=false; //App starts in Night Mode, set to day in setup()
Boolean lightMode=false; //Dark mode starts App, null possible if USER Preferences made
//
color backgroundColour, darkBackground=0, whiteBackground=255; //Gray Scale, note much smaller than COLOR
color foregroundColour;
//
String pathDarkBackgroundImage, pathLightBackgroundImage;
PImage summerMarketPlaceBackground, darthvader, obiwan, bike;
PImage backgroundImage;
PImage albumCoverImage;
float albumCoverRIGHT, albumCoverCENTERED, albumCoverLEFT; //??? Local
//
void setup() {
  //Display
  fullScreen();
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight;
  //Population
  //
 // String darthvader = "10-star-wars-darth-vader-portrait-wallpaper-1-325x485";
  String bike = "New06_Toopy_Binoo";
  //Control with IFs
  String backgroundImageName = bike;
  String extension = ".jpg";
  String pathway = "../Images/";
  String path = pathway quitButtonsound = "clown-car-made-with-Voicemod";
  String path = pathway extension2 = ".mp3";
//  String landscape_Square = "Landscape & Square Images/";
//  String portrait = "Portrait/";
  //Control with IFs
  String path = pathway +  backgroundImageName + extension;
  //String path = pathway + portrait + backgroundImageName + extension;
  backgroundImage = loadImage( path );
  //
  //DIV
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
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
  textFont(generalFont, size);
  text(quit, quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7); //Inside rect() above
  fill(foregroundColour); //Resetting the Defaults
  //

  println(mouseX, mouseY);

  //
} //End draw
//
void keyPressed() { //Listener
  if (key=='Q' || key=='q') exit();
  if (key==CODED && keyCode==ESC) exit();
  if (key=='W' || key=='w') ;
} //End keyPressed
//
void mousePressed() { //Listener
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
  {
    exit();
  }
} //End mousePressed
//
// End MAIN Program
