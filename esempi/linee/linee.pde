import nice.palettes.*;
ColorPalette palette;
int count = 50;
int radius = 80;
int margin = 0;
int z = 50;

void setup() {
  size(500, 500);
  background(255);
  strokeWeight(3);
  rectMode(CENTER);
  palette = new ColorPalette(this);
   palette.getPalette();
  for (int i = 0; i <= count; i++) {
    for (int j = 0; j <= count; j++) {
      
      float x = lerp(margin, width-margin, map(i, 0, count, 0, 1));
      float y = lerp(margin, height-margin, map(j, 0, count, 0, 1));
      
      pushMatrix();
      translate(x, y);
      rotate(radians(z));
      
stroke(palette.colors[floor(random(4))]);
      if (random(1) < 0.3) {
        line(0, 0, radius, radius);
      }
      popMatrix();
    }
    z += 10;
  }
}

void draw() {
}
