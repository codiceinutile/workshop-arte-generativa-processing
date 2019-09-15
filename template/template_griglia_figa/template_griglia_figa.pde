int count = 30;
int radius = 50;

void setup() {
  size(500, 500);
  
  for(int i = 0; i <= count; i++) {
    for(int j = 0; j <= count; j++) {
      float x = lerp(0, width, map(i, 0, count, 0, 1));
      float y = lerp(0, height, map(j, 0, count, 0, 1));
      ellipse(x, y, radius, radius);
    }
  }
  
}

void draw() {
}
