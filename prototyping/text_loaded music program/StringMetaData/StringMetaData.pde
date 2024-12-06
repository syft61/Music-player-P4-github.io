/* META Data - Strings
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;t
//
//Global Variables

//
int appWidth,  appHeight;
float LunchablesX1, LunchablesY1, LunchablesWidth1, LunchablesHeight1;
float LunchablesX2, LunchablesY2, LunchablesWidth2, LunchablesHeight2;
float LunchablesX3, LunchablesY3, LunchablesWidth3, LunchablesHeight3;
//
Minim minim;
int numberOfSongs = 8;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListTitleLunchables = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListPostionLunchables = new AudioMetaData[numberOfSongs]; //might change
AudioMetaData[] playListTimeRemainingLunchables = new AudioMetaData[numberOfSongs]; //might change
AudioMetaData[] playListTotalTimeLunchables = new AudioMetaData[numberOfSongs]; //might change
int currentSong = numberOfSongs - numberOfSongs;
//Review if more meta data needed
//
void setup()
{
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //Population
  LunchablesX1 = appWidth*1/10; //Title
  LunchablesY1 = appHeight*4/10;
  LunchablesWidth1 = appWidth*8/10;
  LunchablesHeight1 = appHeight*1/10;
  LunchablesX2 = appWidth*1/10; //Song Position
  LunchablesY2 = appHeight*3/10;
  LunchablesWidth2 = appWidth*2/10;
  LunchablesHeight2 = appHeight*1/10;
  LunchablesX3 = appWidth*5/10; //Total Song Length | Time Remaining
  LunchablesY3 = appHeight*5/10;
  LunchablesWidth3 = appWidth*4/10;
  LunchablesHeight3 = appHeight*1/10;
  //
  //DIV //X, Y, Width, Height
  rect( LunchablesX1, LunchablesY1, LunchablesWidth1, LunchablesHeight1 );
  rect( LunchablesX2, LunchablesY2, LunchablesWidth2, LunchablesHeight2 );
  rect( LunchablesX3, LunchablesY3, LunchablesWidth3, LunchablesHeight3 );
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN
