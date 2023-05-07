
Boolean UserLoggedIn = false;
Boolean WrongPassword = false;

void CheckPassword(String str) {
  // password security for the console system
  if (str.equals("colleges23") == true) {
    UserLoggedIn = true;
    WrongPassword = false;
    return;
  } else {
    WrongPassword = true;
  }
}

void WrongPassword() { // Informs user of incorrect password input
  if (WrongPassword == true) {
    textSize(18);
    text("Wrong Password. Try Again", 150, 330);
  }
}
