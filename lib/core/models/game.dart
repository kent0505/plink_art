import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class Game {
  @HiveField(0)
  int color;
  @HiveField(1)
  bool active;

  Game({
    this.color = 0xff2E204D,
    this.active = true,
  });
}

class GameAdapter extends TypeAdapter<Game> {
  @override
  final typeId = 0;

  @override
  Game read(BinaryReader reader) {
    return Game(
      color: reader.read(),
      active: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Game obj) {
    writer.write(obj.color);
    writer.write(obj.active);
  }
}
