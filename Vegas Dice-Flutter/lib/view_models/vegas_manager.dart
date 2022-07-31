import 'dart:math';

import 'package:vegas_dice_flutter/models/dice.dart';
import 'package:vegas_dice_flutter/models/player.dart';

const int limitPlayers = 3;
const List<String> imagesPaths = [
  "assets/images/dice1@3x.png",
  "assets/images/dice2@3x.png",
  "assets/images/dice3@3x.png",
  "assets/images/dice4@3x.png",
  "assets/images/dice5@3x.png",
  "assets/images/dice6@3x.png"
];

class VegasManager {
  final List<Player> _players = [];

  bool canAddPlayer() => _players.length < limitPlayers;

  String _getRandomizedDiceImage() {
    int rIndex = Random().nextInt(imagesPaths.length);
    return imagesPaths[rIndex];
  }

  void addPlayer(Player newPlayer) {
    if (!canAddPlayer()) return;
    newPlayer.dice = Dice(_getRandomizedDiceImage());
    _players.add(newPlayer);
  }

  String getWinner() {
    Player winner = _players.first;
    for (var player in _players) {
      player.dice = Dice(_getRandomizedDiceImage());
    }
  }
}
