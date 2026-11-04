float[] amounts = {
  250, 300, 200, 300, 350,
  200, 250, 350, 330, 300,
  250, 200, 250, 350, 250,
  125, 350, 250, 150, 250,
  250, 125, 350, 300, 300
};

int[] drinkTypes = {
  0, 1, 2, 0, 3,
  4, 0, 1, 5, 0,
  6, 7, 0, 1, 2,
  8, 0, 10, 8, 4,
  0, 8, 0, 3, 6
};

float[] xpos = {
  170, 340, 220, 400, 290,
  190, 350, 240, 410, 320,
  205, 380, 290, 160, 360,
  230, 420, 290, 160, 370,
  260, 440, 320, 230, 390
};

float[] ypos = {
  470, 410, 320, 350, 450,
  450, 440, 280, 460, 220,
  270, 400, 560, 310, 410,
  310, 310, 480, 390, 340,
  320, 400, 480, 340, 320
};

color[] drinkColours = {
  #B2E7FF, #D8BF90, #FFF6A2, #BEFFAD,
  #FFB36B, #F57979, #FF9FBD, #E4CBFF,
  #FFDBC9, #E4CBFF, #D8BF90, #FFF6A2
};

float sizeOf(float amount) {
  return map(amount, 200, 350, 12, 20);
}

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

  // First 25 observations
  for (int i = 0; i < 25; i++) {
    fill(drinkColours[drinkTypes[i]]);
    noStroke();
    ellipse(xpos[i], ypos[i],
      sizeOf(amounts[i]), sizeOf(amounts[i]));
  }

  // Lid and straw
  fill(255);
  stroke(0);
  strokeWeight(3);
  rect(100, 160, 400, 40);
  rect(280, 45, 40, 115);
}
