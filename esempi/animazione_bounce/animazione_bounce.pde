int count = 10;
int radius = 20;
float angle = 0;
void setup() {
  size(500, 500);
  
}

void draw() {
  background(0);
  for(int i = 0; i <= count; i++) {
    for(int j = 0; j <= count; j++) {
      float x = lerp(0, width, map(i, 0, count, 0, 1));
      float y = lerp(0, height, map(j, 0, count, 0, 1));
      ellipse(x, y + sin(angle)*random(-50, 50), radius, radius);
    }
  }
  angle += 0.015;
}
