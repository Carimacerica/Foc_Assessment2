void CommandCheck(String str) {
  if (str.length() > 3 && str.substring(0, 4).equals("add ")) {
    NamesList.AddName(str.substring(4, str.length()).toLowerCase());
  }
}
