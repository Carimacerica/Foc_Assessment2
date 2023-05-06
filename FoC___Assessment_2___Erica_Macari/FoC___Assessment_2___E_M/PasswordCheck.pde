
Boolean UserLoggedIn = false;
Boolean WrongPassword = false;

void CheckPassword(String str) {
  if (str.equals("colleges23") == true) {
    UserLoggedIn = true;
    WrongPassword = false;
    return;
  } else {
    // UserLoggedIn = false;
    WrongPassword = true;
  }
}

void WrongPassword() {
  if (WrongPassword == true) {
    textSize(18);
    text("Wrong Password. Try Again", 150, 330);
  }
}
