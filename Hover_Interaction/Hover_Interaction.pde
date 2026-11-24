
class Drink {

  float amount;
  int drinkType;
  float x, y;
  String time;

  Drink(float amount, int drinkType, float x, float y, String time) {
    this.amount = amount;
    this.drinkType = drinkType;
    this.x = x;
    this.y = y;
    this.time = time;
  }

  void display() {
    fill(drinkColours[drinkType]);
    noStroke();
    ellipse(x, y, sizeOf(amount), sizeOf(amount));
  }

  void displayInfo() {
    if (dist(mouseX, mouseY, x, y) < sizeOf(amount) / 2) {

      fill(#FFF0F7);
      stroke(#E9B6D0);
      rect(mouseX + 10, mouseY - 60, 110, 55, 8);

      textAlign(CENTER);
      fill(#A94F79);
      textSize(12);
      text(drinkNames[drinkType], mouseX + 65, mouseY - 43);

      fill(#C76B91);
      textSize(11);
      text(int(amount) + " ml", mouseX + 65, mouseY - 28);
      text(time, mouseX + 65, mouseY - 14);

      textAlign(LEFT);
    }
  }
}


// FUNCTIONS

float sizeOf(float amount) {
  return map(amount, 200, 350, 12, 20);
}


// DRINK DATA

color[] drinkColours = {
  #B2E7FF, #D8BF90, #FFF6A2, #BEFFAD,
  #FFB36B, #F57979, #FF9FBD, #E4CBFF,
  #FFDBC9, #E4CBFF, #D8BF90, #FFF6A2
};

String[] drinkNames = {
  "Water", "Latte", "Orange juice", "Matcha",
  "Apple juice", "Coca-Cola Zero", "Innocent smoothie",
  "Chamomile tea", "Turkish tea", "Peppermint tea",
  "Hot chocolate", "Lemonade"
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


// CIRCLE POSITIONS

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


// TIMES

String[] times = {
  "19:00", "16:15", "12:35", "13:45", "18:00",
  "18:00", "17:45", "11:00", "18:45", "08:15",
  "10:30", "16:00", "23:00", "12:15", "16:30",
  "12:10", "12:15", "19:40", "15:30", "13:15",
  "12:30", "16:00", "19:40", "13:30", "12:30",

  "08:10", "14:00", "19:50", "21:00", "12:10",
  "08:15", "18:00", "20:30", "13:15", "12:50",
  "22:00", "17:00", "09:30", "22:30", "19:00",
  "16:15", "11:00", "10:00", "13:00", "17:00",
  "15:00", "09:20", "21:00", "18:30", "13:00"
};


// CREATE DRINKS

Drink[] drinks = new Drink[50];

void setup() {
  size(600, 700);

  for (int i = 0; i < drinks.length; i++) {
    drinks[i] = new Drink(
      amounts[i], drinkTypes[i], xpos[i], ypos[i], times[i]
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

  // Hover information
  for (int i = 0; i < drinks.length; i++) {
    drinks[i].displayInfo();
  }
}
