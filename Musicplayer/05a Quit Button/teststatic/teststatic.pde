/*Purpose
- introduce single and multipule executed code
- activity: do another rectangle with text in it
- copy and paste do dynamic program
*/ 
// Global variables
//
//Display Geometry, Display Orientation: Landscape, portrait, square
fullScreen();
//
//concatenation & Inspection of Variables
println("Display Monitor:", "width:"+displayWidth, "\theight:"+displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
//
//Single Executred Code: FONT SETUP
//
//DIVs & rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
//rect(X, Y, Width, Height); //footer
//
//Repeated Code: draw()ing text
