int count = 15;
int radius = 50;
int margin = 40;

void setup() {
  size(500, 500);
  background(255);
  rectMode(CENTER);
  fill(0);
  for (int i = 0; i <= count; i++) {
    for (int j = 0; j <= count; j++) {
      float x = lerp(margin, width-margin, map(i, 0, count, 0, 1));
      float y = lerp(margin, height-margin, map(j, 0, count, 0, 1));
      if (random(1) < 0.3) {
        textAlign(CENTER, CENTER);
        textSize(radius);
        text("+", x, y);
      }
    }
  }
}

void draw() {
}
