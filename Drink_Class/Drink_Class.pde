
class Drink {

  float amount;
  int drinkType;
  float x, y;

  Drink(float amount, int drinkType, float x, float y) {
    this.amount = amount;
    this.drinkType = drinkType;
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(drinkColours[drinkType]);
    noStroke();
    ellipse(x, y, sizeOf(amount), sizeOf(amount));
  }
}


// DRINK DATA

color[] drinkColours = {
  #B2E7FF, #D8BF90, #FFF6A2, #BEFFAD,
  #FFB36B, #F57979, #FF9FBD, #E4CBFF,
  #FFDBC9, #E4CBFF, #D8BF90, #FFF6A2
};

float[] amounts = {
  250, 300, 200, 300, 350,
  200, 250, 350, 330, 300,
  250, 200, 250, 350, 250,
  125, 350, 250, 150, 250,
  250, 125, 350, 300, 300,

  250, 400, 500, 300, 250,
  250, 450, 300, 450, 100,
  330, 250, 150, 180, 125,
  500, 400, 250, 180, 300,
  250, 350, 125, 150, 330
};

int[] drinkTypes = {
  0, 1, 2, 0, 3,
  4, 0, 1, 5, 0,
  6, 7, 0, 1, 2,
  8, 0, 10, 8, 4,
  0, 8, 0, 3, 6,

  0, 1, 5, 0, 9,
  0, 1, 2, 0, 8,
  0, 7, 8, 4, 8,
  0, 3, 0, 6, 0,
  5, 1, 8, 8, 11
};

float[] xpos = {
  170, 340, 220, 400, 290,
  190, 350, 240, 410, 320,
  205, 380, 290, 160, 360,
  230, 420, 290, 160, 370,
  260, 440, 320, 230, 390,

  290, 180, 350, 250, 440,
  340, 220, 380, 270, 150,
  320, 230, 420, 300, 200,
  410, 270, 450, 350, 200,
  390, 280, 180, 340, 245
};

float[] ypos = {
  470, 410, 320, 350, 450,
  450, 440, 280, 460, 220,
  270, 400, 560, 310, 410,
  310, 310, 480, 390, 340,
  320, 400, 480, 340, 320,

  220, 350, 490, 520, 310,
  220, 450, 500, 340, 330,
  540, 420, 250, 550, 470,
  410, 280, 260, 330, 420,
  380, 250, 520, 460, 330
};


// FUNCTIONS

float sizeOf(float amount) {
  return map(amount, 200, 350, 12, 20);
}


// CREATE DRINKS

Drink[] drinks = new Drink[50];

void setup() {
  size(600, 700);

  for (int i = 0; i < drinks.length; i++) {
    drinks[i] = new Drink(
      amounts[i], drinkTypes[i], xpos[i], ypos[i]
    );
  }
}


// DRAW SKETCH

void draw() {
  background(#FFEAD8);

  // Cup
  fill(255);
  stroke(0);
  strokeWeight(3);
  quad(120, 200, 480, 200, 420, 600, 180, 600);

  // Display drinks
  for (int i = 0; i < drinks.length; i++) {
    drinks[i].display();
  }

  // Lid and straw
  fill(255);
  stroke(0);
  strokeWeight(3);
  rect(100, 160, 400, 40);
  rect(280, 45, 40, 115);
}
