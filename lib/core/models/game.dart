import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class Game {
  @HiveField(0)
  final int id;
  @HiveField(1)
  Color color;
  @HiveField(2)
  bool active;

  Game({
    required this.id,
    this.color = const Color(0xff2E204D),
    this.active = false,
  });
}

class GameAdapter extends TypeAdapter<Game> {
  @override
  final typeId = 0;

  @override
  Game read(BinaryReader reader) {
    return Game(
      id: reader.read(),
      color: reader.read(),
      active: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Game obj) {
    writer.write(obj.id);
    writer.write(obj.color);
    writer.write(obj.active);
  }
}
