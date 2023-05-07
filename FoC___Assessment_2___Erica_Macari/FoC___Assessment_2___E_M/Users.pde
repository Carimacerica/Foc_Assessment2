class Users {

  ArrayList<String> Names = new ArrayList<String>();

  Users() { // added a bunch of names to start off the array list
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
    // added a limit to the array list size to adhere to the screensize limit for printing them
    if (Names.size() >= 65) {
      ErrorMessage = "Out Of Memory, 65 Name Limit Reached";
      EntryFailed = true;
    } else {
      Names.add(Name); // add names to array list if called on
    }
  }

  void RemoveName(String Name) {
    Names.remove(Name); // remove names from array list if called on
  }
  ArrayList<String> GetNames() {
    return Names; // returns all names in array list when called
  }

  void BubbleSort() { // sorting algorithm for the list of names
    int n = Names.size();
    boolean notFinishedSorting = true;
    while (notFinishedSorting) { // continue sorting until there are no more names left to move
      notFinishedSorting = false;
      for (int i=1; i< n; i++) {
        if (Names.get(i - 1).compareTo(Names.get(i)) > 0) {
          String tempName = Names.get(i - 1);
          Names.set(i - 1, Names.get(i));
          Names.set(i, tempName);
          notFinishedSorting = true;
        }
      }
      n --; // does not go through the last element with each loop as it is already sorted
    }
    PrintNames = true; // displays the names after they are sorted on the screen for the user to check
  }
}
