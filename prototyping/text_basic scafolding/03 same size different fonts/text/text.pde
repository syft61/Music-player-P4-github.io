/* Static Text
 - Testing for Aspect Ratio
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float peakWritingX, peakWritingY, peakWritingWidth, peakWritingHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color red=#EA1515, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
String title = "krillin", footer="diama", phrase=" freaky master roshi";
//
//Display
size( 500, 650 ); //Portrait CANVAS
appWidth = width;
appHeight = height;
//
//Text: Single Executed Code
//Fonts from OS (Operating System)
//String[] fontList = PFont.list(); //To list all fonts available on OS
//printArray(fontList); //For listing all possible fonts to choose from, then createFont
// Tools / Create Font / Find Font / Do not press "OK", known bug
titleFont = createFont("ravie", 55); //Verify the font exists in Processing.Java
footerFont = createFont("playbill", 55);
phraseFont = createFont("Papyrus", 55);
//
/* Population
- using 10's
- Could be 100s or percent
- Able to use decimals to dial in the values
*/
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
peakWritingX = titleX; //Best Practice: change on formula
peakWritingY = appHeight*4.5/10; //Ratio done last. How is this Centered Vertically?
peakWritingWidth = titleWidth; //Best Practice
peakWritingHeight = titleHeight; //Best Practice
footerX = titleX; //Best Practice
footerY = appHeight*8/10;
footerWidth = titleWidth; //Best Practice
footerHeight = titleHeight; //Best Practice
//DIVs
rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
rect( peakWritingX, peakWritingY, peakWritingWidth, peakWritingHeight ); // Testing Aspect Ratio of Fonts
rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
//
//Drawing Text
fill(red); //Ink, hexidecimal copied from Color Selector
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 45;
textFont( titleFont, size ); 
text( title, titleX, titleY, titleWidth, titleHeight );
textFont( footerFont, size ); 
text( footer, footerX, footerY, footerWidth, footerHeight );
textFont( phraseFont, size ); 
text( phrase, peakWritingX, peakWritingY, peakWritingWidth, peakWritingHeight );
