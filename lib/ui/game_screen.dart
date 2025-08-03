import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import '../game/ludo_board_game.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ludo Board'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: GameWidget(
          game: LudoBoardGame(),
          loadingBuilder: (context) => const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20),
                Text('Loading Ludo Board...'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}