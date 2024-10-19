import 'package:hive_flutter/hive_flutter.dart';

import '../models/game.dart';
import '../models/game1.dart';
import '../models/game2.dart';
import '../models/game3.dart';
import '../models/game4.dart';
import '../models/game5.dart';
import '../models/game6.dart';
import '../models/game7.dart';
import '../models/game8.dart';
import '../models/game9.dart';
import '../utils.dart';

Future<void> initHive() async {
  try {
    await Hive.initFlutter();
    // await Hive.deleteBoxFromDisk('plinkartbox');
    Hive.registerAdapter(GameAdapter());
  } catch (e) {
    logger(e);
  }
}

List<Game> getDefaultGame(int id) {
  if (id == 1) return defaultGame1;
  if (id == 2) return defaultGame2;
  if (id == 3) return defaultGame3;
  if (id == 4) return defaultGame4;
  if (id == 5) return defaultGame5;
  if (id == 6) return defaultGame6;
  if (id == 7) return defaultGame7;
  if (id == 8) return defaultGame8;
  if (id == 9) return defaultGame9;
  return List.generate(
    600,
    (index) {
      return Game(active: false, color: 0xff2E204D);
    },
  );
}

Future<List<Game>> getGames(int id) async {
  final box = await Hive.openBox('plinkartbox');
  List data = box.get('game$id') ?? getDefaultGame(id);
  return data.cast<Game>();
}

Future<List<Game>> saveGames(int id, List<Game> gameList) async {
  final box = await Hive.openBox('plinkartbox');
  box.put('game$id', gameList);
  return await box.get('game$id') ?? getDefaultGame(id);
}
