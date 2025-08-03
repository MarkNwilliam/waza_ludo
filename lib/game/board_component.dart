import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/painting.dart';

class BoardComponent extends PositionComponent {
  @override
  Future<void> onLoad() async {
    size = Vector2(400, 400);
    
    // Yellow background
    add(RectangleComponent(
      size: size,
      paint: Paint()..color = const Color(0xFFFFFF00),
    ));

    // Grid lines using RectangleComponent
    final linePaint = Paint()..color = const Color(0xFF000000)..strokeWidth = 2;
    
    // Vertical lines
    for (int i = 0; i <= 10; i++) {
      add(RectangleComponent(
        position: Vector2(i * 40, 0),
        size: Vector2(2, 400),
        paint: linePaint,
      ));
    }
    
    // Horizontal lines
    for (int i = 0; i <= 10; i++) {
      add(RectangleComponent(
        position: Vector2(0, i * 40),
        size: Vector2(400, 2),
        paint: linePaint,
      ));
    }
  }
}