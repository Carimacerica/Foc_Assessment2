void CommandCheck(String str) {
  PrintNames = false;
  String[] list = split(str, " ");
  if (list.length == 2 && list[0].equals("add") && !list[1].equals("")) {
    NamesList.AddName(list[1]); // add name to list
    NameAdded = true;
  } else if (str.equals("print names")) { // print names to screen
    PrintNames = true;
  } else if (str.equals("logout")) { // logout from the system
    UserLoggedIn = false;
  } else if (list.length == 2 && list[0].equals("remove") && !list[1].equals("")) { // remove users from the array list
    NamesList.RemoveName(list[1]);
    NameRemoved = true;
  } else if (list.length == 2 && list[0].equals("search") && !list[1].equals("")) {
    for (String name : NamesList.GetNames()) {
      if (name.equals(list[1])) { // if name is on the list return below message
        SearchUserResult = "Found User - " + list[1];
        return; // stop looking once user is found
      }
    }
    SearchUserResult = "User Not Found - " + list[1]; // if user is not on the list returns this message
  } else if (str.equals("sort names")) { // sort names
    NamesList.BubbleSort();
  } else {
    EntryFailed = true; // if input is not recognised - error message
    ErrorMessage = "Entry Failed, Try Again";
  }
}
