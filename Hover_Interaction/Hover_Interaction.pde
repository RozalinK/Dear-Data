class Drink {

  // Attributes
  float amount;
  int drinkType;
  float x;
  float y;

  // Constructor
  Drink(float amount, int drinkType, float x, float y) {

    this.amount = amount;
    this.drinkType = drinkType;
    this.x = x;
    this.y = y;
  }

  // Display method
  void display() {
    float diameter = map(amount, 200, 350, 12, 20);

    fill(drinkColours[drinkType]);
    noStroke();
    ellipse(x, y, diameter, diameter);
  }

  // Display information when hovering
  void displayInfo() {

    float diameter = map(amount, 200, 350, 12, 20);

    if (dist(mouseX, mouseY, x, y) < diameter / 2) {

      // Pink tooltip background
      fill(#FFF0F7);
      stroke(#E9B6D0);
      rect(mouseX + 10, mouseY - 50, 130, 45, 10);

      // Drink name
      fill(#A94F79);
      textSize(13);
      text(drinkNames[drinkType], mouseX + 18, mouseY - 30);

      // Amount
      fill(#C76B91);
      textSize(12);
      text(int(amount) + " ml", mouseX + 18, mouseY - 14);
    }
  }
}

color[] drinkColours = {
  #B2E7FF, // Water
  #D8BF90, // Latte
  #FFF6A2, // Orange juice
  #BEFFAD, // Matcha
  #FFB36B, // Apple juice
  #F57979, // Coca-Cola Zero
  #FF9FBD, // Innocent smoothie
  #E4CBFF, // Chamomile tea
  #FFDBC9  // Turkish tea
};

String[] drinkNames = {
  "Water",
  "Latte",
  "Orange juice",
  "Matcha",
  "Apple juice",
  "Coca-Cola Zero",
  "Innocent smoothie",
  "Chamomile tea",
  "Turkish tea"
};

float[] amounts = { //Amounts (ml)
  // Observations 1-25
  250, 300, 200, 300, 350,
  200, 250, 350, 330, 300,
  250, 200, 250, 350, 250,
  250, 125, 350, 250, 150,
  250, 250, 125, 350, 300,

  // Observations 26-50
  250, 400, 500, 300, 250,
  250, 450, 300, 450, 100,
  330, 250, 150, 180, 125,
  500, 400, 250, 180, 300,
  250, 350, 125, 150, 330
};

//Drink Types
// 0 = Water, 1 = Latte, 2 = Orange juice,
// 3 = Matcha, 4 = Apple juice, 5 = Coca-Cola Zero,
// 6 = Innocent smoothie, 7 = Chamomile tea,
// 8 = Turkish tea

int[] drinkTypes = {
  // Observations 1-25
  0, 1, 2, 0, 3,
  4, 0, 1, 5, 0,
  6, 7, 0, 1, 2,
  2, 8, 0, 2, 8,
  2, 0, 8, 0, 3,
  // Observations 26-50
  0, 1, 5, 0, 7,
  0, 1, 2, 0, 8,
  0, 7, 8, 4, 8,
  0, 3, 0, 6, 0,
  5, 1, 8, 8, 2
};

float[] xPos = {
  // First 25
  220, 340, 250, 350, 300,
  350, 380, 410, 200, 230,
  260, 290, 320, 350, 380,
  240, 300, 360, 420, 200,
  260, 320, 380, 230, 350,
  // Next 25
  270, 340, 250, 350, 300,
  400, 420, 410, 200, 230,
  260, 290, 280, 350, 420,
  240, 300, 360, 420, 180,
  260, 320, 380, 230, 350
};

float[] yPos = {
  // First 25
  220, 300, 420, 550, 350,
  420, 250, 330, 450, 240,
  320, 430, 570, 360, 410,
  300, 250, 400, 500, 350,
  450, 520, 300, 550, 380,
  // Next 25
  260, 320, 430, 550, 390,
  260, 400, 480, 330, 450,
  570, 300, 470, 520, 350,
  230, 380, 480, 550, 310,
  430, 500, 280, 400, 540
};

Drink[] drinks = new Drink[50]; //Array of drink objects

void setup() {
  size(600, 700);

  // Create 50 Drink objects
  for (int i = 0; i < drinks.length; i++) {
    drinks[i] = new Drink(
      amounts[i],
      drinkTypes[i],
      xPos[i],
      yPos[i]
    );
  }
}

void draw() {

  background(#FFEAD8);

  // Draw cup body
  fill(255);
  stroke(0);
  strokeWeight(3);

  quad(120, 200, 480, 200, 420, 600, 180, 600);

  // Display all 50 Drink objects
  for (int i = 0; i < drinks.length; i++) {
  drinks[i].display();
  }
  // Display hover information
  for (int i = 0; i < drinks.length; i++) {

    drinks[i].displayInfo();  }

  // Draw lid and straw
  fill(255);
  stroke(0);
  rect(100, 160, 400, 40);
  rect(280, 45, 40, 115);
}
