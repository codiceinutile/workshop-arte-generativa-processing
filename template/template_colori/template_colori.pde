// Import the library
import nice.palettes.*;

// Declare the main ColorPalette object
ColorPalette palette;

void setup() {
  size(500, 500);
  noStroke();
  // Initialize it, passing a reference to the current PApplet 
  palette = new ColorPalette(this);
  
  // Call the getPalette() method of the palette object
  // to load five different colors randomly
  palette.getPalette();
  
  for(int i = 0; i < width; i+= 30) {
    for(int j = 0; j < height; j += 30) {
      fill(palette.colors[round(random(4))]);
      rect(i, j, 20, 20);
    }
  }
  
  noLoop();
}

void draw() {
}
