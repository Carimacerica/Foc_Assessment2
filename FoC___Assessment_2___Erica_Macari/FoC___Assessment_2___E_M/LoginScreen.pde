void BackgroundMatrix() {

  for (int i = 0; i <  Numbers.size(); i++) {
    MatrixNumber m =  Numbers.get(i);
    m.Update();
    m.Render();
  }
}

void loginDisplay() {

  fill(0);
  rect(120, 160, 250, 180);

  fill(0, 175, 0);
  textSize(18);
  text("USER DATABASE", 180, 200);
  text("Enter Password:", 180, 260);
  text(inputText.toLowerCase(), 180, 280);
}
