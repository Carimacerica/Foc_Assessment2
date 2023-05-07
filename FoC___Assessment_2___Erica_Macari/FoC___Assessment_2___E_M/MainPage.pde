boolean EntryFailed = false;
String ErrorMessage = "";
boolean PrintNames = false;
String SearchUserResult = "";
boolean NameAdded = false;
boolean NameRemoved = false;

void MainPage() {

  fill(0);
  rect(15, 5, 140, 20); // black box behind command board title
  rect(15, 25, 330, 20); // black box for search instructions
  rect(15, 45, 280, 20); // black box for add instructions
  rect(15, 65, 340, 20); // black box for remove instructions
  rect(15, 85, 200, 20); // black box for sort instructions
  rect(15, 105, 210, 20); // black box for print instructions
  rect(15, 125, 140, 20); // black box for log out instructions
  rect(140, 160, 230, 180); // black box for input command

  fill(0, 175, 0);
  textSize(18);
  text("Command Board", 20, 20);
  text("Search Users = 'search' space 'users name'", 20, 40); // command search instructions
  text("Add User = 'add' space 'users name'", 20, 60); // command add instructions
  text("Remove User = 'remove' space 'users name'", 20, 80);  // command log out instructions
  text("Sort Users = 'sort names'", 20, 100);  // command sort instructions
  text("Print Users = 'print names'", 20, 120); // command print instructions
  text("Logout = 'logout'", 20, 140);  // command log out instructions

  text("USER DATABASE", 180, 200);
  text("Input Command:", 180, 230);
  text(inputText.toLowerCase(), 180, 260); // input text to function commands

  // if input is invalid error message appears
  if (EntryFailed == true) {
    fill(0, 175, 0);
    textSize(18);
    text (ErrorMessage, 170, 310);
  }

  //text for if search command for users if used
  if (SearchUserResult != "") {
    fill(0, 175, 0);
    textSize(18);
    text (SearchUserResult, 180, 310);
  }
// text to confirm a name was added when used
  if (NameAdded == true) {
    fill(0, 175, 0);
    textSize(18);
    text ("Name Added", 180, 310);
  }
// text to confirm a name was removed when used
  if (NameRemoved == true) {
    fill(0, 175, 0);
    textSize(18);
    text ("Name Removed", 180, 310);
  }

  // Displays users list printed on screen if called from command functions
  if (PrintNames == true) {
    fill(0);
    rect(0, 235, 500, 270);
    int x = 10;
    int y = 250;

    // loops through the names array list and makes them appear on the screen as text
    for (String name : NamesList.GetNames()) {
      textSize(18);
      fill(0, 175, 0);
      text (name, x, y);
      y += 20; // iderates each name below the prior one
      // when it reached the bottom of the screen it resets the x point further
      // along the screen to avoid the names clashing
      if (y >= 500) {
        x +=100;
        y = 250;
      }
    }
  }
  LogOutButton();
}
