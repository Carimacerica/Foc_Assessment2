class Users {

  ArrayList<String> Names = new ArrayList<String>();

  Users() {
    this.Names.add("michael");
    this.Names.add("dwight");
    this.Names.add("jim");
    this.Names.add("pam");
    this.Names.add("kevin");
    println(this.Names);
  }

  void AddName(String Name) {
    this.Names.add(Name);
    println(Names);
  }
}
