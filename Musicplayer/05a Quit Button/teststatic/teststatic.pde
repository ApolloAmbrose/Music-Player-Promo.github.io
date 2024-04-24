/*Purpose
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
//
//Global Variables
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
String title="help";
int size;
color aqua=#0AF5EF;
float BodyX, BodyY, BodyWidth, BodyHeight;
String Body="hello! I am currently hacking your computer and if you see this message you have 10 minutes before your information and computer access is stolen bye! :D";
color orange=#FF5500;

//
//Display Geoemtry, Display Orientation: landscape, portrait, square
fullScreen();
//
//Concatenation & Inspection of Variables
println("Display Monitor:", "width:"+displayWidth, "\theight:"+displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
BodyX = appWidth*1/10;
BodyY = appHeight*1/11;
BodyWidth = appWidth*8/10;
BodyHeight = appHeight*7/11;
//
//Single Executed Code: Font SETUP
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts to choose from, then createFont
size = 55;
titleFont = createFont("OldEnglishTextMT-48", size);
//bottomFont = createFont("", size); //Note: more than one font allowed
// Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
//
//DIVs & rect()s: rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
//rect(X, Y, Width, Height); //footer //Note: assignment
//
//Repeated Code: draw()ing text
fill(aqua); //Ink
textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 80; //Note: CS20 studies size algorithm
textFont(titleFont, size);
text(title, titleX, titleY, titleWidth, titleHeight);
//
//
fill(orange); //Ink
textAlign(CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 80; //Note: CS20 studies size algorithm
textFont(titleFont, size);
text(Body, BodyX, BodyY, BodyWidth, BodyHeight);
