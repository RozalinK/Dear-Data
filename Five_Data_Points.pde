float [] amounts = {250, 300, 200, 300, 350};
int[] drinkTypes = {0,1,2,0,3}; //0 = Water, 1 = Latte, 2 = Orange juice, 3 = Matcha
float[] xPos = {220,340,250,350,300};
float[] yPos = {220,300,420,550,350};

void setup() {
size (600, 700);
background(#FFEAF9);
noFill();
stroke(0);
strokeWeight(3);

fill(255);
quad(120,200,480,200,420,600,180,600); //Cup body

for (int i = 0; i < amounts.length; i++) {
  drawDrink(xPos[i], yPos[i], amounts[i], drinkTypes[i]);
}

fill(255);
stroke(0);
rect(100,160,400,40); //Lid
rect(280,45,40,115); //Straw

}

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

noStroke();
ellipse(x,y, diameter, diameter);
}


  
