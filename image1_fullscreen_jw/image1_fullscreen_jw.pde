/**
 * Loads a "flower.jpg" image drom a folder called data in the to specify the transparency 
 * and displays it to screen
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
