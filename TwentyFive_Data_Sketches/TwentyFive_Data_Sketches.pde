float [] amounts = {
  250, 300, 200, 300, 350,
  200, 250, 350, 330, 300,
  250, 200, 250, 350, 250,
  250, 125, 350, 250, 150,
  250, 250, 125, 350, 300};
  
int[] drinkTypes = {
  0, 1, 2, 0, 3, 
  4, 0, 1, 5, 0,
  6, 7, 0, 1, 2,
  2, 8, 0, 2, 8,
  2, 0, 8, 0, 3}; 
  
// Arrays storing the amount, drink type and position of each data point

// 0 = Water, 1 = Latte, 2 = Orange juice, 3 = Matcha,
// 4 = Apple juice, 5 = Coca-Cola Zero,
// 6 = Innocent smoothie, 7 = Chamomile tea, 8 = Turkish tea

// X and Y coordinates determine where each data point appears
float[] xPos = {
  220, 340, 250, 350, 300,
  350, 380, 410, 200, 230,
  260, 290, 320, 350, 380,
  240, 300, 360, 420, 200,
  260, 320, 380, 230, 350,
};
float[] yPos = {
  220, 300, 420, 550, 350,
  420, 250, 330, 450, 240,
  320, 430, 570, 360, 410,
  300, 250, 400, 500, 350,
  450, 520, 300, 550, 380,
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
// Scale the diameter according to the recorded amount
void drawDrink(float x, float y, float amounts, int drinkTypes) {
  float diameter = map(amounts,200,350,10,18);
  
if (drinkTypes == 0) {
  fill(#B2E7FF); //Water
}
else if (drinkTypes == 1) {
  fill(#D8BF90); //Latte
}
else if (drinkTypes == 2) {
  fill(#FFF6A2); //Orange Juice
}
else if (drinkTypes == 3) {
  fill(#BEFFAD); //Matcha
}
  else if (drinkTypes == 4) {
  fill(#FFB36B); // Apple juice
}
else if (drinkTypes == 5) {
  fill(#F57979); // Coca-Cola Zero
}
else if (drinkTypes == 6) {
  fill(#FF9FBD); // Innocent smoothie
}
else if (drinkTypes == 7) {
  fill(#DCCB9A); // Chamomile tea
} 
else if (drinkTypes == 8) {
  fill(#B56B45); // Turkish tea
}
// Draw the data point at its assigned position
noStroke();
ellipse(x,y, diameter, diameter);
}
