/*
* Demonstrates the use of the GifAnimation library.
* 
*/

import gifAnimation.*;

PImage[] animation;
Gif loopingGif;

boolean pause = false;

public void setup() {
  size(1000, 1000);
  frameRate(100);
  loopingGif = new Gif(this, "lavalamp.gif");
  loopingGif.loop();
}

void draw() {
  background(0);
  image(loopingGif, 0, 0); //change the 0,0 for the location you want on the screen eg 200,200
}
