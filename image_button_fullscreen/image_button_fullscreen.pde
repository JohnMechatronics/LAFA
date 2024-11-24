/**
 * Loads a 6 images from  a folder called data 
 * and cycles through them on mouse pressed
 */

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

int pressed = 1;

void setup() {
  fullScreen();
  img1 = loadImage("1.jpg");
  img1.resize(width, height);
  img2 = loadImage("2.jpg");
  img2.resize(width, height);
  img3 = loadImage("3.jpg");
  img3.resize(width, height);
  img4 = loadImage("4.jpg");
  img4.resize(width, height);
  img5 = loadImage("5.jpg");
  img5.resize(width, height);
  img6 = loadImage("6.jpg");
  img6.resize(width, height);
}

void draw() {
  if (pressed == 1) {
    image(img1, 0, 0);
  } else if (pressed == 2) {
    image(img2, 0, 0);
  } else if (pressed == 3) {
    image(img3, 0, 0);
  } else if (pressed == 4) {
    image(img4, 0, 0);
  } else if (pressed == 5) {
    image(img5, 0, 0);
  } else if (pressed == 6) {
    image(img6, 0, 0);
  } else {
    image(img1, 0, 0);
  }
}

void mousePressed() {
  pressed = pressed + 1;
  if (pressed >6) {
    pressed = 1;
  }
}
