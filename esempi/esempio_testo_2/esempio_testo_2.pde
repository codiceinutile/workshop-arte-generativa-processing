import nice.palettes.*;
ColorPalette palette;
int count = 30;
int radius = 25;
int margin = 40;

void setup() {
  size(500, 500);
  background(255);
  rectMode(CENTER);
  palette = new ColorPalette(this);
   palette.getPalette();
  for (int i = 0; i <= count; i++) {
    for (int j = 0; j <= count; j++) {
      
      float x = lerp(margin, width-margin, map(i, 0, count, 0, 1));
      float y = lerp(margin, height-margin, map(j, 0, count, 0, 1));
      
      pushMatrix();
      translate(x, y);
      rotate(radians(random(90)));
      textSize(radius);
      fill(palette.colors[floor(random(4))]);
      if (random(1) < 0.3) {
        text("+", 0, 0);
      }
      popMatrix();
    }
  }
}

void draw() {
}
