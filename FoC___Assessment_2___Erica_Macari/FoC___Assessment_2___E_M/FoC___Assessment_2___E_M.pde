int MatrixCount = 350; // number of elements in the matrix background
ArrayList <MatrixNumber> Numbers = new ArrayList<MatrixNumber>();

void setup() {
  size(500, 500); // size of drawing

  for (int i=0; i < MatrixCount; i++) {
    Numbers.add( new MatrixNumber(random(0, 500), random(0, 500))); // Creates all the number elements for the opening screen at random X / Y positions
  }
}

String inputText = "";
Users NamesList = new Users();

void draw() {
  background(0); // black colour of background
  BackgroundMatrix();

  if (UserLoggedIn == true) { // what displays the different screens depending if the user is logged in or not
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
      NameAdded = false;
      NameRemoved = false;
      SearchUserResult = "";
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
