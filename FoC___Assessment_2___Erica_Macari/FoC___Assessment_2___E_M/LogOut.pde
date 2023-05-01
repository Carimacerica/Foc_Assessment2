
float checkBoxSizeX = 70f, checkBoxSizeY = 20f;
int x= 420, y = 10;

void LogOutButton() {
  fill(0, 175, 0);
  rect(x, y, checkBoxSizeX, checkBoxSizeY);
  fill (0);
  textSize(15);
  text("Log Out", 430, 25);
}


void mousePressed() {
  if (mouseX > x &&
    mouseX < x + checkBoxSizeX &&
    mouseY > y &&
    mouseY < y + checkBoxSizeY) {
    UserLoggedIn = false;
  }
}
