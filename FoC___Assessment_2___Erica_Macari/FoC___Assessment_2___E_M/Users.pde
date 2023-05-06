class Users {
  String temp;
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

  void BubbleSort() {
    int n = Names.size();
    boolean notFinishedSorting = true;
    while (notFinishedSorting) {
      notFinishedSorting = false;
      for (int i=1; i< n; i++) {
        if (Names.get(i - 1).compareTo(Names.get(i)) > 0) {
          String tempName = Names.get(i - 1);
          Names.set(i - 1, Names.get(i));
          Names.set(i, tempName);
          notFinishedSorting = true;
        }
      }
      n --;
    }
    PrintNames = true;
  }
}
