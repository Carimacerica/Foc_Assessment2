class MatrixNumber {

  PVector pos;
  float speed;
  float chance = random(0, 10);
  float NumberSize = random(5, 15);

  // constructor
  MatrixNumber(float x, float y) {
    pos = new PVector(x, y);
    speed = NumberSize * 0.05f; // rate at which the matrix elements move
  }

  void Update() {
    pos.y += speed; // y positon increasing by speed variable
    if (pos.y > 500) {
      Reset();
    }
  }

  void Render() {
    fill(0, 175, 0, random(50, 260)); // green + random opacity
    textSize(NumberSize);
    if (chance > 5) {
      text ("1", pos.x, pos.y); // text 1 on login screen
    } else {
      text ("0", pos.x, pos.y); // text 0 on login screen
    }
  }

  void Reset() {
    pos.x = random(0, 500); // reset the boxes X position
    pos.y = 0; // reset the boxes Y position
  }
}
