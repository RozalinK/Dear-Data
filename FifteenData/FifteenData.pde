
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

  // First 15 observations
  noStroke();

  fill(#B2E7FF);
  ellipse(180, 470, 20, 20);

  fill(#D8BF90);
  ellipse(340, 410, 20, 20);

  fill(#FFF6A2);
  ellipse(220, 320, 12, 12);

  fill(#B2E7FF);
  ellipse(400, 350, 20, 20);

  fill(#BEFFAD);
  ellipse(290, 450, 20, 20);

  fill(#FFB36B);
  ellipse(190, 450, 20, 20);

  fill(#B2E7FF);
  ellipse(350, 440, 16, 16);

  fill(#D8BF90);
  ellipse(240, 280, 20, 20);

  fill(#F57979);
  ellipse(410, 460, 20, 20);

  fill(#B2E7FF);
  ellipse(320, 220, 20, 20);

  fill(#FF9FBD);
  ellipse(205, 270, 16, 16);

  fill(#E4CBFF);
  ellipse(380, 400, 20, 20);

  fill(#B2E7FF);
  ellipse(290, 560, 20, 20);

  fill(#D8BF90);
  ellipse(160, 310, 20, 20);

  fill(#FFF6A2);
  ellipse(360, 410, 16, 16);

  // Lid and straw
  fill(255);
  stroke(0);
  strokeWeight(3);
  rect(100, 160, 400, 40);
  rect(280, 45, 40, 115);
}
