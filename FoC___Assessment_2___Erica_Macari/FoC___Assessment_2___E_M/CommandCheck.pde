void CommandCheck(String str) {
  PrintNames = false;
  String[] list = split(str, " ");
  if (list.length == 2 && list[0].equals("add") && !list[1].equals("")) {
    NamesList.AddName(list[1]);
  } else if (str.equals("print names")) {
    PrintNames = true;
  } else {
    EntryFailed = true;
    ErrorMessage = "Entry failed, try again";
  }
}
