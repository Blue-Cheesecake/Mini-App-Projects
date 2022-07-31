class Dice {
  final String imagePath;

  Dice(this.imagePath);

  int get score {
    if (imagePath == "assets/images/dice1@3x.png") return 1;
    if (imagePath == "assets/images/dice2@3x.png") return 2;
    if (imagePath == "assets/images/dice3@3x.png") return 3;
    if (imagePath == "assets/images/dice4@3x.png") return 4;
    if (imagePath == "assets/images/dice5@3x.png") return 5;
    if (imagePath == "assets/images/dice6@3x.png") return 6;
    return -1;
  }
}
