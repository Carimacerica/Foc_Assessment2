void setup() {
  size(500, 500);
}

String inputText = "";

void draw() {
  background(0);
  loginDisplay();
  WrongPassword();
}


void keyPressed() {
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
