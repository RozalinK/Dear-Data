
void setup() {
  size(600, 700);
}

void draw() {
  background(#FFEAD8);

  // Cup
  fill(255);
  stroke(0);
  strokeWeight(3);
  quad(120, 200, 480, 200, 420, 600, 180, 600);

  // Lid and straw
  rect(100, 160, 400, 40);
  rect(280, 45, 40, 115);
}
    
