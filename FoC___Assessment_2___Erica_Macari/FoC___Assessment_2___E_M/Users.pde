class Users {


  ArrayList<String> Names = new ArrayList<String>();

  Users() {
    this.Names.add("michael");
    this.Names.add("dwight");
    this.Names.add("jim");
    this.Names.add("pam");
    this.Names.add("kevin");
    this.Names.add("stanley");
    this.Names.add("angela");
    this.Names.add("meredith");
    this.Names.add("andy");
    this.Names.add("phyllis");
    this.Names.add("oscar");
    this.Names.add("darryl");
    this.Names.add("ryan");
    this.Names.add("kelly");
    this.Names.add("toby");
    this.Names.add("creed");
    this.Names.add("erin");
    this.Names.add("jan");
    this.Names.add("holly");
  }

  void AddName(String Name) {

    if (Names.size() >= 65) {
      ErrorMessage = "Out Of Memory, 65 Name Limit Reached";
      EntryFailed = true;
    } else {
      Names.add(Name);
    }
  }


  ArrayList<String> GetNames() {
    return Names;
  }
}
