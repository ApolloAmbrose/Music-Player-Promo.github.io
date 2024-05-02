float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX,albumCoverY, albumCoverWidth, albumCoverHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void divs() {
population();
drawRects();
} //End DIVs
//
void population() { 
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
} //End population
//
void drawRects() { //Layout DIVs
  //Formula: rect(X, Y, Width, Height);
  //
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
} //End Draw Rectangles
//End DIVs SubProgram
