void setup() {
  size(500, 500);
}

String inputText = "";
Users NamesList = new Users();

void draw() {
  background(0);

  if (UserLoggedIn == true) {
    MainPage();
  } else if (UserLoggedIn == false) {
    loginDisplay();
    WrongPassword();
  }
}


void keyPressed() {
  if (UserLoggedIn == true) {
    if (key == ENTER) {
      CommandCheck(inputText.toLowerCase());
      inputText ="";
      return;
    } else if (key == BACKSPACE && inputText.length() > 0) {
      inputText=inputText.substring(0, inputText.length()-1); // remove last letter
    } else if ( key != BACKSPACE) {
      inputText += key; // add the key to input
      ErrorMessage = "";
      EntryFailed = false;
      PrintNames = false;
    }
  } else if (UserLoggedIn == false) {
    if (key == ENTER) {    // Send the input to a checker
      CheckPassword(inputText.toLowerCase());
      inputText ="";
      return;
    } else if (key == BACKSPACE && inputText.length() > 0) {
      inputText=inputText.substring(0, inputText.length()-1); // remove last letter
    } else if ( key != BACKSPACE) {
      inputText += key; // add the key to input
    }
  }
}
