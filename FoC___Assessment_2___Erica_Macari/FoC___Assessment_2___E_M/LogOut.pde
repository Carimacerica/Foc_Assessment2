
float checkBoxSizeX = 70f, checkBoxSizeY = 20f;
int x= 420, y = 10;

void LogOutButton() {
  fill(0, 175, 0);
  rect(x, y, checkBoxSizeX, checkBoxSizeY); // rectangle for logout button
  fill (0);
  textSize(15);
  text("Log Out", 430, 25);
}

void mousePressed() { // function to log out if the logout button is clicked to change relevant boolean to false
  if (mouseX > x &&
    mouseX < x + checkBoxSizeX &&
    mouseY > y &&
    mouseY < y + checkBoxSizeY) {
    UserLoggedIn = false;
  }
}
