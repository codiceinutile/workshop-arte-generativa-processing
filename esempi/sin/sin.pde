float angle = 0;
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  ellipse(width/2, height/2 + sin(angle)*100, 10, 10);
  angle += 0.25;
}
