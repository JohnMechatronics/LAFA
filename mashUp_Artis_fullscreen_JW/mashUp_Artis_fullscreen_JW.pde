/**
 * Masshup of 6 images 
 *
 * Click and drag mouse up and down to control the signal.
 * Press and hold any keys 1 to 6 to chqnge image and watch the scanning.
 */

PImage img;
int direction = 1;

float signal;

void setup() {
  fullScreen();
  stroke(255);
  img = loadImage("1.jpg");
  img.resize(width, height);
  img.loadPixels();
  loadPixels();
}

void draw() {
  if (signal > img.height-1 || signal < 0) {
    direction = direction * -1;
  }
  if (mousePressed == true) {
    signal = abs(mouseY % img.height);
  } else {
    signal += (0.3*direction);
  }

  if ((keyPressed == true) && (key == '1')) {
    img = loadImage("1.jpg");
    img.resize(width, height);
    img.loadPixels();
    loadPixels();
    set(0, 0, img);
    line(0, signal, img.width, signal);
  }  else if ((keyPressed == true) && (key == '2')) {
    img = loadImage("2.jpg");
    img.resize(width, height);
    img.loadPixels();
    loadPixels();
    set(0, 0, img);
    line(0, signal, img.width, signal);
  } else if ((keyPressed == true) && (key == '3')) {
    img = loadImage("3.jpg");
    img.resize(width, height);
    img.loadPixels();
    loadPixels();
    set(0, 0, img);
    line(0, signal, img.width, signal);
  } else if ((keyPressed == true) && (key == '4')) {
    img = loadImage("4.jpg");
    img.resize(width, height);
    img.loadPixels();
    loadPixels();
    set(0, 0, img);
    line(0, signal, img.width, signal);
  } else if ((keyPressed == true) && (key == '5')) {
    img = loadImage("5.jpg");
    img.resize(width, height);
    img.loadPixels();
    loadPixels();
    set(0, 0, img);
    line(0, signal, img.width, signal);
  } else if ((keyPressed == true) && (key == '6')) {
    img = loadImage("6.jpg");
    img.resize(width, height);
    img.loadPixels();
    loadPixels();
    set(0, 0, img);
    line(0, signal, img.width, signal);
  }
  else {
    int signalOffset = int(signal)*img.width;
    for (int y = 0; y < img.height; y++) {
      arrayCopy(img.pixels, signalOffset, pixels, y*width, img.width);
    }
    updatePixels();
  }
}
