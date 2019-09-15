void setup() {
  size(500, 500);
  colorMode(HSB);
  
}

void draw() {
  for(int i = 0; i < height; i += 50) {
    fill(mouseX, map(i, 0, height, 0, 255), 255);
    rect(0, i, width, 50);
  }
}
