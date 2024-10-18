import 'package:hive_flutter/hive_flutter.dart';

import '../models/game.dart';
import '../utils.dart';

List<Game> game1 = [];
List<Game> game2 = [];
List<Game> game3 = [];
List<Game> game4 = [];
List<Game> game5 = [];
List<Game> game6 = [];
List<Game> game7 = [];
List<Game> game8 = [];
List<Game> game9 = [];
List<Game> game10 = [];

Future<void> initHive() async {
  try {
    await Hive.initFlutter();
    // await Hive.deleteBoxFromDisk('plinkartbox');
    Hive.registerAdapter(GameAdapter());
  } catch (e) {
    logger(e);
  }
}

List<Game> getListByID(int id) {
  if (id == 1) return game1;
  if (id == 2) return game2;
  if (id == 3) return game3;
  if (id == 4) return game4;
  if (id == 5) return game5;
  if (id == 6) return game6;
  if (id == 7) return game7;
  if (id == 8) return game8;
  if (id == 9) return game9;
  if (id == 10) return game10;
  return game1;
}
