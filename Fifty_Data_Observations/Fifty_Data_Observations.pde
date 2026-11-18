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

float [] amounts = {
  //Observations 1-25
  250, 300, 200, 300, 350,
  200, 250, 350, 330, 300,
  250, 200, 250, 350, 250,
  250, 125, 350, 250, 150,
  250, 250, 125, 350, 300,
  //Observations 26-50
  250, 400, 500, 300, 250,
  250, 450, 300, 450, 100,
  330, 250, 150, 180, 125,
  500, 400, 250, 180, 300,
  250, 350, 125, 150, 330}; 
  
int[] drinkTypes = {
  //Observations 1-25
  0, 1, 2, 0, 3, 
  4, 0, 1, 5, 0,
  6, 7, 0, 1, 2,
  2, 8, 0, 2, 8,
  2, 0, 8, 0, 3,
  //Observations 26-50
  0, 1, 5, 0, 7,
  0, 1, 2, 0, 8,
  0, 7, 8, 4, 8,
  0, 3, 0, 6, 0,
  5, 1, 8, 8, 2}; 
  
// Arrays storing the amount, drink type and position of each data point
// 0 = Water, 1 = Latte, 2 = Orange juice, 3 = Matcha,
// 4 = Apple juice, 5 = Coca-Cola Zero,
// 6 = Innocent smoothie, 7 = Chamomile tea, 8 = Turkish tea

// X and Y coordinates determine where each data point appears
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

void setup() {
// Set up the canvas and background
size (600, 700);
background(#FFEAF9);
noFill();
stroke(0);
strokeWeight(3);
// Draw the cup body
fill(255);
quad(120,200,480,200,420,600,180,600); 

// Draw the lid and straw in front of the data points
for (int i = 0; i < amounts.length; i++) {
  drawDrink(xPos[i], yPos[i], amounts[i], drinkTypes[i]);
}

fill(255);
stroke(0);
rect(100,160,400,40);
rect(280,45,40,115); 

}
void drawDrink(float x, float y, float amounts, int drinkTypes) {

  float diameter = map(amounts, 200, 350, 12, 20);

  // Select the correct colour
  fill(drinkColours[drinkTypes]);

  // Draw the data point
  noStroke();
  ellipse(x, y, diameter, diameter);
}
