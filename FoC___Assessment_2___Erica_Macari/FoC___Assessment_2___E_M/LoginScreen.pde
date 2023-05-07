void BackgroundMatrix() {

  for (int i = 0; i <  Numbers.size(); i++) { // for loop to draw matrix background
    MatrixNumber m =  Numbers.get(i);
    m.Update();
    m.Render();
  }
}

void loginDisplay() {

  fill(0);
  rect(120, 160, 250, 180); // black box for login display
  fill(0, 175, 0);
  textSize(18);
  text("USER DATABASE", 180, 200);
  text("Enter Password:", 180, 260);
  text(inputText.toLowerCase(), 180, 280); // text input
}
