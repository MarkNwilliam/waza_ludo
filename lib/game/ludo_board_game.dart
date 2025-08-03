import 'package:flame/game.dart';
import 'package:flame/components.dart';

class LudoBoardGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await add(
      SpriteComponent.fromImage(
        await images.load('ludo_board_main.png'),
        size: Vector2(600, 600),
      ),
    );
  }
}