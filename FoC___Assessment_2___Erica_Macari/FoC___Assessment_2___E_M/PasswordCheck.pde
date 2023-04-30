
Boolean Password = false;
Boolean WrongPassword = false;

void CheckPassword(String str) {
  if (str.equals("colleges23") == true) {
    Password = true;
    WrongPassword = false;
    return;
  } else if (str != ("Colleges23")) {
    Password = false;
    WrongPassword = true;
  } else {
    Password = false;
  }
}

void WrongPassword() {
  if (WrongPassword == true) {
    textSize(18);
    text("Wrong Password. Try Again", 200, 350);
  }
}
