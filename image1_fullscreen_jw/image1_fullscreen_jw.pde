/**
 * Loads a "flower.jpg" image from a folder called data resizes the image and displays it at full screen 
 */

PImage img; //variable to hold the image

void setup() {
  fullScreen();
  img = loadImage("flower.jpg"); //loads the image from /data folder
  img.resize(width, height); // resize to the height and width of the screen
  
}

void draw() {
  image(img, 0, 0); //draws the image to screen. The 0,0 means make it fit the size of the sketch
}
