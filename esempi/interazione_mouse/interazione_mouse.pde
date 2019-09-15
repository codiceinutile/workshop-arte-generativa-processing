import nice.palettes.*;
ColorPalette palette;
int count = 2;
float radius = 20;
int margin = 40;

void setup() {
  size(500, 500);
  palette = new ColorPalette(this);
  palette.getPalette();
}

void draw() {
  background(255);
  rectMode(CENTER);
  for (int i = 0; i <= count; i++) {
    for (int j = 0; j <= count; j++) {
  
      float x = lerp(margin, width-margin, map(i, 0, count, 0, 1));
      float y = lerp(margin, height-margin, map(j, 0, count, 0, 1));
      
      float diam = map(mouseX, 0, width, 10, 50);
      
      pushMatrix();
      translate(x, y);
      rotate(radians(map(mouseY, 0, height, 0, 180)));
      fill(0);
      //fill(palette.colors[floor(random(4))]);
      //if (random(1) < 0.3) {
        rect(0, 0, diam, diam);
      //}
      popMatrix();
    }
  }
}

void mousePressed() {
  count++;
  
}
