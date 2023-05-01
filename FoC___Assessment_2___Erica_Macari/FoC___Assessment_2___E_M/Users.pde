class Users {

  ArrayList<String> Names = new ArrayList<String>();

  Users() {
    this.Names.add("michael");
    this.Names.add("dwight");
    this.Names.add("jim");
    this.Names.add("pam");
    this.Names.add("kevin");
  }

  void AddName(String Name) {

    if (Names.size() >= 65) {
      ErrorMessage = "Out of Memory, 65 name limit reached";
      EntryFailed = true;
    } else {
      Names.add(Name);
    }
  }

  ArrayList<String> GetNames() {
    return Names;
  }
}
