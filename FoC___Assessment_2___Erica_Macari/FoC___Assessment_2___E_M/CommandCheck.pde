void CommandCheck(String str) {
  PrintNames = false;
  String[] list = split(str, " ");
  if (list.length == 2 && list[0].equals("add") && !list[1].equals("")) {
    NamesList.AddName(list[1]); // add name to list
  } else if (str.equals("print names")) { // print names to screen
    PrintNames = true;
  } else if (list.length == 2 && list[0].equals("search") && !list[1].equals("")) {
    for (String name : NamesList.GetNames()) {
      if (name.equals(list[1])) {
        SearchUserResult = "Found User - " + list[1];
        return;
      }
    }
    SearchUserResult = "User Not Found - " + list[1];
  } else if (str.equals("sort names")) { // sort names
    NamesList.BubbleSort();
  } else {
    EntryFailed = true;
    ErrorMessage = "Entry Failed, Try Again";
  }
}
