void setup() {
  size(500, 500);
  // CICLI FOR PER GRIGLIA
  for(int i = 0; i < width; i += 30) {
    for(int j = 0; j < height; j+= 30) {
      rect(i, j, 20, 20);
    }
  }
}

void draw() {
}
