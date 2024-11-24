/**

 * Loads a "flower.jpg" image drom a folder called data in the to specify the transparency 
 * and displays it to screen
 */

PImage img; //variable to hold the image

void setup() {
  size(400, 400);
  img = loadImage("flower.jpg"); //loads the image from /data folder
  
}

void draw() {
  image(img, 0, 0); //draws the image to screen. The 0,0 means make it fit the size of the sketch
}
