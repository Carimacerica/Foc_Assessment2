boolean EntryFailed = false;
String ErrorMessage = "";
boolean PrintNames = false;

void MainPage() {

  fill(0, 175, 0);
  textSize(18);
  text("Welcome", 200, 200);
  text(inputText.toLowerCase(), 200, 300);

  if (EntryFailed == true) {
    fill(0, 175, 0);
    textSize(18);
    text (ErrorMessage, 150, 250);
  }

  if (PrintNames == true) {
    int x = 10;
    int y = 250;
    for (String name : NamesList.GetNames()) {
      textSize(18);
      text (name, x, y);
      y += 20;
      if (y >= 500) {
        x +=100;
        y = 250;
      }
    }
  }

  LogOutButton();
}
